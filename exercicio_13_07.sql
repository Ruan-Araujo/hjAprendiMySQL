-- Grupo 6
-- questão 2
EXPLAIN SELECT `nome` FROM `cancoes` WHERE `nome` = 'Hero';

SHOW INDEX FROM `cancoes`;

CREATE INDEX `i_cancoes_nome` ON `cancoes`(`nome`);

DROP INDEX `i_cancoes_nome` ON `cancoes`;

-- questão 3
EXPLAIN SELECT `albuns`.`titulo` FROM `albuns` WHERE `titulo` = 'Na pista';
-- rows = 347 para achar o resultado;

SHOW INDEX FROM `albuns`;

CREATE INDEX `i_albuns_titulo` ON `albuns`(`titulo`);
-- row = 1 para achar o resultado. Mais otimizado;

DROP INDEX `i_albuns_titulo` ON `albuns`;
	