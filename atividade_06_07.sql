-- A) Selecione os nomes dos artistas (tabela artistas) que tem albuns, e o nome de
-- seus albuns (tabelas albuns) ordenado por id do artista (Order by). [Inner]
-- Ruan Araújo
CREATE VIEW `atividadeA` AS
SELECT `artistas`.`nome` AS `artistasNome`,
`albuns`. `titulo` AS `albumNome`
FROM `artistas`
INNER JOIN `albuns`
ON `artistas`.`id` = `albuns`.`id_artista`
ORDER BY `artistas`.`id`;

-- B) Agora selecione os nomes dos artistas (tabela artistas) que tem, e que não
-- tem albuns, e o nome de seus albuns quando houver (tabelas albuns) ordenado por id
-- do artista (Order by).
CREATE VIEW `atividadeB` AS
SELECT `artistas`.`nome` AS `artistasNome`,
`albuns`. `titulo` AS `albumNome`
FROM `artistas`
LEFT JOIN `albuns`
ON `artistas`.`id` = `albuns`.`id_artista`
ORDER BY `artistas`.`id`;

-- A) Selecione o id e o nome dos cliente (clientes) e o valor suas faturas (faturas)
-- [inner].
CREATE VIEW `atividadeC` AS
SELECT `clientes`.`id`, `clientes`.`nome`, 
`faturas`.`valor_total`
FROM `clientes`
INNER JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`;

-- B) Agora selecione o id e o nome dos cliente (clientes) e o valor suas faturas
-- (faturas). E selecione também as faturas que não tem clientes. [right].
CREATE VIEW `atividadeD` AS
SELECT `clientes`.`id`, `clientes`.`nome`, 
`faturas`.`valor_total`
FROM `clientes`
RIGHT JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`;

-- A) Selecione o nome da canção (cancoes) e o tipo e arquivo delas [inner].
CREATE VIEW `atividade3A` AS
SELECT 
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `Tipoarquivo`
FROM `cancoes` INNER JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

-- B) Agora selecione o nome da canção (cancoes) e o tipo e arquivo delas. E
-- selecione também os tipos de arquivo que não tem musicas. [right]
CREATE VIEW `atividade3B` AS
SELECT 
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `Tipoarquivo`
FROM `cancoes` RIGHT JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

-- C) Agora selecione o nome da canção (cancoes) e o tipo e arquivo delas. E
-- selecione também as musicas que não tem tipo de arquivo. [left].
CREATE VIEW `atividade3C` AS
SELECT 
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `Tipoarquivo`
FROM `cancoes` LEFT JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

-- Transforme todas as consultas feitas nos exercícios anteriores (A - JOINS) em
-- views. E salve-as.

-- Consultar todas as canções;

CREATE VIEW `musicas` AS
SELECT * FROM `cancoes`;

-- Consultar todas as faturas com valor maior que 5.
CREATE VIEW `valorMaiorQue5` AS
SELECT `valor_total` FROM `faturas` 
WHERE `valor_total` > 5;

-- Consultar todos artistas cujo o nome começa com a letra B.

SELECT * FROM `artistas` 
WHERE `artistas`.`nome`
LIKE '_b%';


