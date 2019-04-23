--Grupo 1

SELECT produto.codproduto, produto.descricao, produto.precoatc, produtoestab.codproduto, produto.coddepto, produtoestab.codestabelec, produtoestab.usuario
FROM produto
iNNER JOIN produtoestab ON(produto.codproduto = produtoestab.codproduto)
WHERE produto.codproduto < 6000 
ORDER BY produto.coddepto DESC
LIMIT 10

--Grupo 2

SELECT pedido.codestabelec,pedido.numpedido, pedido.dtemissao, itpedido.totalliquido, itpedido.totalbruto, pedido.usuario, itpedido.numpedido, itpedido.preco
FROM pedido
INNER JOIN itpedido ON(pedido.numpedido = itpedido.numpedido)
WHERE pedido.numpedido > 1
ORDER BY pedido.numpedido 
LIMIT 100

--Grupo 3

SELECT cupom.codestabelec, cupom.totalbruto, cupom.totalliquido, cupom.idcupom, itcupom.idcupom, itcupom.preco, itcupom.desconto
FROM cupom 
INNER JOIN itcupom ON(cupom.idcupom = itcupom.idcupom)
where cupom.idcupom > 1 and cupom.idcupom < 10
order by cupom.idcupom desc
LIMIT 10

--Grupo 4

SELECT notafiscal.codestabelec, notafiscal.numnotafis, notafiscal.idnotafiscal, notafiscal.status, notafiscal.dtemissao, itnotafiscal.idnotafiscal
FROM notafiscal
INNER JOIN itnotafiscal ON(notafiscal.idnotafiscal = itnotafiscal.idnotafiscal)
where notafiscal.idnotafiscal != 1
order by notafiscal.idnotafiscal desc
LIMIT 10