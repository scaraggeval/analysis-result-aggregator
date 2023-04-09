-- checkstyle java
INSERT INTO rule_violation(rule_sarif_id, language_id, tool_id)
VALUES ('unused.local.var', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('name.invalidPattern', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('needBraces', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('import.unused', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('import.duplicate', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('simplify.expression', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('noNewlineAtEOF', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('javadoc.packageInfo', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('ws.preceded', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('ws.illegalFollow', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('ws.notPreceded', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('javadoc.missing', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('variable.notPrivate', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('final.parameter', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('Line has trailing spaces.', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('file.containsTab', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('redundantModifier', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('ws.notFollowed', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('maxLineLen', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('hide.utility.class', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('line.same', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('hidden.field', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('magic.number', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('import.avoidStar', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('multiple.variable.declarations.comma', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('ws.followed', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('import.lang', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('line.break.before', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('array.type.style', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('simplify.boolReturn', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('assignment.inner.avoid', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('line.previous', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('maxParam', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('mod.order', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('ws.typeCast', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('line.new', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('block.noStatement', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('line.alone', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('empty.statement', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('invalid.position', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('line.break.after', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('design.forExtension', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('multiple.variable.declarations', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('equals.noHashCode', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('javadoc.expectedTag', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('missing.switch.default', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('maxLen.method', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('javadoc.noPeriod', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle')),
       ('javadoc.return.expected', (SELECT l.id FROM language l WHERE l.name = 'java'),  (SELECT t.id FROM tool t WHERE t.name = 'Checkstyle'));