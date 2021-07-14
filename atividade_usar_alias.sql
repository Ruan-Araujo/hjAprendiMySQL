
SELECT `c`.`id`, 
`c`.`nome`,
`f`.`valor_total`
FROM `clientes` AS `c`
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`. `id_cliente`
HAVING `f`.`valor_total` > 10
ORDER BY `c`.`nome` ASC;
