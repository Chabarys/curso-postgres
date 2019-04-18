SELECT produto.codproduto, produto.descricao, produto.precoatc, produto.precovrj, produto.coddepto 
FROM produto
INNER JOIN produtoestab ON(produto.codproduto = produtoestab.codproduto)
WHERE produto.
LIMIT 10

SELECT pedido.codestabelec, pedido.numpedido, pedido.dtemissao, pedido.operacao, pedido.usuario, pedido.dtentrega
FROM pedido
INNER JOIN itpedido ON(pedido.numpedido = itpedido.numpedido)
LIMIT 10


SELECT cupom.codestabelec, cupom.totalbruto, cupom.totalliquido, cupom.idcupom, cupom.status
FROM cupom 
INNER JOIN itcupom ON(cupom.idcupom = itcupom.idcupom)
LIMIT 10


SELECT notafiscal.codestabelec, notafiscal.numnotafis, notafiscal.status, notafiscal.dtemissao, notafiscal.operacao
FROM notafiscal
INNER JOIN itnotafiscal ON(notafiscal.idnotafiscal = itnotafiscal.idnotafiscal)
LIMIT 10
