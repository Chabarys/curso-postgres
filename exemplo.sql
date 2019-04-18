SELECT* FROM departamento WHERE coddepto > 4 LIMIT 3

SELECT 9+3 AS soma, 9*7 AS teste2,'Hello World' AS texto

SELECT cupom, totalliquido, totalliquido + 8 AS  texto FROM cupom LIMIT 20

SELECT produto.codproduto,
(SELECT produtoean.codean FROM produtoean WHERE produto.codproduto = produtoean.codproduto LIMIT 1) AS ean 
FROM produto WHERE produto.codproduto = 5001

SELECT produto.codproduto, produto.precovrj, produto.precoatc FROM produto WHERE produto.precovrj >= 10 
AND produto.precoatc > 0 
AND produto.coddepto = 2 
AND produto.gerapdv = 'S'

SELECT departamento.coddepto, departamento.nome, produto.codproduto,
produto.descricaofiscal
FROM produto
INNER JOIN departamento ON (produto.coddepto = departamento.coddepto) LIMIT 4

SELECT cupom.cupom, itcupom.codproduto, itcupom.valortotal FROM cupom 
INNER JOIN itcupom ON(cupom.idcupom = itcupom.idcupom)
WHERE cupom.cupom = '000030'
--LIMIT 10

SELECT codproduto, descricao, coddepto
FROM produto
ORDER BY coddepto ASC, produto.codproduto asc


