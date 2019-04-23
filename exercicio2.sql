select produto.codproduto, 
	produto.descricaofiscal, 
	departamento.nome, 
	grupoprod.descricao, 
	subgrupo.descricao
from produto
inner join subgrupo on (produto.codsubgrupo = subgrupo.codsubgrupo)
inner join grupoprod on (produto.codgrupo = grupoprod.codgrupo)
inner join departamento on (produto.coddepto = departamento.coddepto)
where produto.codproduto > 1 
	or produto.descricao != 'ANAL' 
	or produto.coddepto < 10 
	or grupoprod.codgrupo > 10
	or subgrupo.codsubgrupo = 6
order by produto.codsubgrupo desc
limit 10

