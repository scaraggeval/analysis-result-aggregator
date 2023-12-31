package masters.aggregatorservice.service.impl;

import lombok.RequiredArgsConstructor;
import masters.aggregatorservice.entity.*;
import masters.aggregatorservice.entity.Tool;
import masters.aggregatorservice.schema.*;
import masters.aggregatorservice.service.AggregationService;
import masters.aggregatorservice.service.RuleViolationQueryService;
import masters.aggregatorservice.service.ToolQueryService;
import masters.aggregatorservice.service.command.AggregationCommand;
import org.springframework.stereotype.Service;

import java.net.URI;
import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AggregationServiceImpl implements AggregationService {

    private static final URI schema =
        URI.create("https://schemastore.azurewebsites.net/schemas/json/sarif-2.1.0-rtm.4.json");
    public static final String SYNONYM_RULE_VIOLATIONS = "synonymRuleViolations";
    public static final String CUSTOM_MESSAGES = "customMessages";

    private final RuleViolationQueryService ruleViolationQueryService;

    private final ToolQueryService toolQueryService;

    @Override
    public Sarif aggregate(AggregationCommand aggregationCommand) {
        final List<Sarif> sarifs = aggregationCommand.getSarifs();

        final Sarif sarif = new Sarif();
        sarif.set$schema(schema);
        sarif.setVersion(Sarif.Version._2_1_0);

        final List<Run> aggregatedRuns = sarifs.stream()
            .flatMap(intermediate -> intermediate.getRuns().stream())
            .toList();
        sarif.setRuns(aggregatedRuns);

        // For future reference: this will unite all shared files that SA tools might've produced on their own.
        final Set<ExternalProperties> aggregatedInlineExternalProperties = sarifs.stream()
            .flatMap(intermediate -> intermediate.getInlineExternalProperties().stream())
            .collect(Collectors.toSet());
        sarif.setInlineExternalProperties(aggregatedInlineExternalProperties);

        if (Boolean.TRUE.equals(aggregationCommand.getCustomMessages())) {
            aggregatedRuns.forEach(run -> addCustomMessages(run, aggregationCommand.getLanguage()));
        }

        if (Boolean.TRUE.equals(aggregationCommand.getSynonymInfo())) {
            final var synonymInfoMap = getSynonymInfo(aggregatedRuns, aggregationCommand.getLanguage());

            final PropertyBag propertyBag = new PropertyBag();
            propertyBag.setAdditionalProperty(SYNONYM_RULE_VIOLATIONS, synonymInfoMap);

            sarif.setProperties(propertyBag);
        }

        return sarif;
    }

    private void addCustomMessages(Run run, Language language) {
        final String toolName = run.getTool().getDriver().getName();
        final Tool tool = toolQueryService.findByName(toolName);

        for (Result result : run.getResults()) {
            final Optional<RuleViolation> optionalRuleViolation = ruleViolationQueryService.findRuleViolation(result.getRuleId(), tool, language);
            if (optionalRuleViolation.isEmpty()) {
                continue;
            }

            final RuleViolation ruleViolation = optionalRuleViolation.get();
            if (ruleViolation.getCustomMessages().isEmpty()) {
                continue;
            }

            final Map<CustomMessageType, String> customMessageInfos = ruleViolation.getCustomMessages().stream().collect(Collectors.toMap(CustomMessage::getMessageType, CustomMessage::getMessage));
            if (customMessageInfos.isEmpty()) {
                continue;
            }

            final PropertyBag propertyBag = new PropertyBag();
            propertyBag.setAdditionalProperty(CUSTOM_MESSAGES, customMessageInfos);
            result.getMessage().setProperties(propertyBag);
        }
    }

    private Map<String, Map<String, Map<String, String>>> getSynonymInfo(List<Run> aggregatedRuns, Language language) {
        final Map<String, Map<String, Map<String, String>>> synonymsMap = new HashMap<>();
        final Map<String, Set<String>> appearingRuleViolationsPerTool = new HashMap<>();

        // Find all rule violations in this sarif log per tool
        for (Run run : aggregatedRuns) {
            final String toolName = run.getTool().getDriver().getName();

            run.getResults().forEach(result -> {
                final Set<String> ruleIdSet = appearingRuleViolationsPerTool.getOrDefault(toolName, new HashSet<>());
                ruleIdSet.add(result.getRuleId());
                appearingRuleViolationsPerTool.put(toolName, ruleIdSet);
            });
        }

        // Create a map that has for each rule violation per tool its synonyms
        for (Run run : aggregatedRuns) {
            final String toolName = run.getTool().getDriver().getName();

            for (Result result : run.getResults()) {
                final Set<RuleViolation> synonyms =
                    ruleViolationQueryService.findSynonyms(result.getRuleId(), toolName, language);

                final List<RuleViolation> currentSynonyms = synonyms.stream()
                    .filter(synonym -> appearingRuleViolationsPerTool.getOrDefault(synonym.getTool().getName(), Collections.emptySet()).contains(synonym.getRuleSarifId()))
                    .toList();

                currentSynonyms.forEach(ruleViolation -> {
                    final Map<String, Map<String, String>> toolRuleViolationSynonymMap = synonymsMap.getOrDefault(toolName, new HashMap<>());
                    final Map<String, String> toolSynonymRuleViolationMap = toolRuleViolationSynonymMap.getOrDefault(result.getRuleId(), new HashMap<>());

                    toolSynonymRuleViolationMap.put(ruleViolation.getTool().getName(), ruleViolation.getRuleSarifId());
                    toolRuleViolationSynonymMap.put(result.getRuleId(), toolSynonymRuleViolationMap);
                    synonymsMap.put(toolName, toolRuleViolationSynonymMap);
                });

                final Set<String> ruleIdSet = appearingRuleViolationsPerTool.getOrDefault(toolName, new HashSet<>());
                ruleIdSet.add(result.getRuleId());
                appearingRuleViolationsPerTool.put(toolName, ruleIdSet);
            }
        }

        return synonymsMap;
    }

}
