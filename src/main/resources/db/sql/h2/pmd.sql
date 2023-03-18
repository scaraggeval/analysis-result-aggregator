-- PMD
INSERT INTO rule_violation(rule_sarif_id, language_id, tool_id)
VALUES ('NoPackage', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnusedLocalVariable', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnusedPrivateMethod', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('MethodNamingConventions', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UseUtilityClass', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('CloseResource', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('PreserveStackTrace', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('ReturnEmptyCollectionRatherThanNull', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('ControlStatementBraces', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('LocalVariableNamingConventions', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UncommentedEmptyMethodBody', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnnecessaryImport', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UselessParentheses', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UncommentedEmptyConstructor', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('OneDeclarationPerLine', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('ForLoopCanBeForeach', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnnecessaryReturn', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('SimplifyBooleanReturns', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('FormalParameterNamingConventions', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnnecessaryLocalBeforeReturn', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnnecessaryModifier', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('AvoidUsingHardCodedIP', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('EmptyCatchBlock', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('EmptyIfStmt', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('SingularField', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('LiteralsFirstInComparisons', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnusedPrivateField', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('ClassNamingConventions', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UseEqualsToCompareStrings', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnusedFormalParameter', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('LooseCoupling', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('AbstractClassWithoutAnyMethod', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('CompareObjectsWithEquals', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('EmptyStatementNotInLoop', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UseCollectionIsEmpty', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('LogicInversion', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('GenericsNaming', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('AvoidBranchingStatementAsLastInLoop', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('SimplifyConditional', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnnecessaryFullyQualifiedName', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('ImplicitSwitchFallThrough', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('DoNotExtendJavaLangThrowable', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UnconditionalIfStatement', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UselessOperationOnImmutable', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UseLocaleWithCaseConversions', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('SuspiciousEqualsMethodName', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('SwitchStmtsShouldHaveDefault', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('UselessOverridingMethod', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('FinalFieldCouldBeStatic', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('NonThreadSafeSingleton', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('IdenticalCatchBranches', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD'),
       ('EmptyWhileStmt', SELECT l.id FROM "LANGUAGE" l WHERE l.name = 'java',  SELECT t.id FROM tool t WHERE t.name = 'PMD');

