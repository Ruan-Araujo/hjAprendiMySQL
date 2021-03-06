-- 1 - Selecione o nome dos artistas(tabela artistas)  com o nome de seus albuns (tabela albuns)
-- ordenado por id do artista (Order by).
SELECT `artistas`. `nome`,
`albuns`. `titulo`
FROM `artistas` 
INNER JOIN `albuns`
ON `albuns`.`id_artista` = `artistas`.`id`
ORDER BY `id_artista`;
-- 2 - Selecione o nome do cliente (clientes) e suas faturas (faturas),
-- porém somente as faturas com valor maior de 5 ordenados pelo valor da fatura decrescente.
SELECT `clientes`.`nome`,
`faturas`.`valor_total`
FROM `clientes`
INNER JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`
HAVING `valor_total` > 5
ORDER BY `valor_total` DESC;
-- 3 Selecione o nome das cancoes (tabela cancoes) e o tipo de arquivo
-- (tabela tipos_de_arquivos) e exiba o nome da canção e o tipo ordenado pelo id da canção.
SELECT `cancoes`.`nome`,
`tipos_de_arquivo`.`nome`
FROM `cancoes` INNER JOIN `tipos_de_arquivo`
ON `cancoes`.`id` = `id_tipo_de_arquivo`
ORDER BY `cancoes`.`id`;
