SELECT * FROM `db_seduc`. `estudantes` LIMIT 5;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_id` > 10;

SELECT `estudante_nome` FROM `db_seduc`. `estudantes`;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` = 18;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` > 40;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` >= 65;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` < 35;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` <= 30;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` <= 30;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` <> 40;

SELECT * FROM `db_seduc`. `estudantes` WHERE `escola_id` IS NULL;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` BETWEEN 32 AND 45;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` IN (18,35,52);

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_nome` LIKE 'A%';

SELECT * FROM `db_seduc`. `estudantes`
ORDER BY `estudante_idade` DESC;

SELECT * FROM `db_seduc`. `estudantes`
ORDER BY `estudante_idade` ASC;

SELECT * FROM `db_seduc`. `estudantes` LIMIT 15 OFFSET 20;

DELETE FROM `db_seduc`.`estudantes` WHERE `estudante_idade` = 18;






