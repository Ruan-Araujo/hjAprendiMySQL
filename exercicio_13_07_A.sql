-- Grupo 6
SELECT `cancoes`.`nome` as `NomeCancao`, 
`tipos_de_arquivo`.`nome` as `TipoArquivo` 
FROM `cancoes` 
left join `tipos_de_arquivo`
on `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`
order by `cancoes`.`id` DESC
limit 4000;

-- Análise das boas práticas.

-- GERAL
-- Falta de padrão ao escrever a sintaxe dos comandos SQL. 
-- Todos os comandos deveriam ser em letra maiúscula
-- Poderia ter uma quebra de linha para facilitar a leitura;

-- SELECT: 
-- I - Evitou usar o *;
-- II - Utilizou o Alias para cada campo especificado no SELECT;

-- ORDER BY:
-- Deve-se usar order by apenas em casos necessários. 

-- Ordem de Processamento

-- I - FROM `cancoes` 
-- II - on `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`
-- III - left join `tipos_de_arquivo` 
-- IV - SELECT `cancoes`.`nome` as `NomeCancao`, `tipos_de_arquivo`.`nome` as `TipoArquivo` 
-- V - order by `cancoes`.`id` DESC
-- VI - limit 4000;