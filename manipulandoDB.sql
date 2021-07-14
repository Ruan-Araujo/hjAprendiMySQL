SELECT `estudante_nome`, `estudante_idade` FROM `db_seduc`. `estudantes`;

SELECT * FROM  `db_seduc`. `estudantes`;

SELECT * FROM `db_seduc`. `estudantes` LIMIT 5;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` >= 90;

SELECT * FROM `db_seduc`. `estudantes` WHERE `escola_id` IS NULL;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` BETWEEN 10 AND 21;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_idade` > 20
ORDER BY `estudante_idade` ASC;

SELECT * FROM `db_seduc`. `estudantes` WHERE `estudante_nome` LIKE '__a%';


