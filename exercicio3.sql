select itcupom.idcupom,
	produto.descricao, 
	produto.codproduto,
	itcupom.preco, 
	itcupom.desconto,
	itcupom.quantidade,
	itcupom.valortotal
from itcupom
inner join produto on (itcupom.codproduto = produto.codproduto)
inner join cupom on (itcupom.idcupom = cupom.idcupom)
where cupom.codestabelec = 1
	or cupom.idcupom > 10000
	or cupom.caixa != 1
order by preco desc
limit 10