select  produto.codproduto,
	produto.descricao,
	natoperacao.natoperacao, 
	itnotafiscal.natoperacao, 
	itnotafiscal.totalliquido, 
	itnotafiscal.totalicms
from itnotafiscal
inner join produto on (itnotafiscal.codproduto = produto.codproduto)
inner join notafiscal on (itnotafiscal.numpedido = notafiscal.numpedido)
inner join natoperacao on (itnotafiscal.natoperacao = natoperacao.natoperacao)
where notafiscal.numnotafis > 100 
	or notafiscal.serie = '1'
	or notafiscal.dtemissao = '2014-02-19'
	or notafiscal.dtemissao BETWEEN '2014-02-19' AND '2019-03-10'
	or (notafiscal.dtemissao >= '2014-02-19' AND notafiscal.dtemissao <= '2015-02-19')
limit 10

