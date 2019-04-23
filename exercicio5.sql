select DISTINCT ON (produto.codproduto)
	produto.codproduto, 
	produto.descricao, 
	produtoean.codean, 
	fornecedor.nome, 
	fornecedor.codfornec
from produto
inner join produtoean on (produto.codproduto = produtoean.codproduto)
inner join prodfornec on (produto.codproduto = prodfornec.codproduto)
inner join fornecedor on (prodfornec.codfornec = fornecedor.codfornec)
where produto.codproduto > 5000
	or produtoean.codean != '00061988'
	or fornecedor.codfornec > 10
order by produto.codproduto
limit 100;

select DISTINCT ON (produto.codproduto)
	produto.codproduto, 
	produto.descricao, 
	(SELECT codean FROM produtoean WHERE codproduto = produto.codproduto LIMIT 1) AS codean, 
	fornecedor.nome, 
	fornecedor.codfornec
from produto
inner join prodfornec on (produto.codproduto = prodfornec.codproduto)
inner join fornecedor on (prodfornec.codfornec = fornecedor.codfornec)
where produto.codproduto > 5000
	--or produtoean.codean != '00061988'
	or fornecedor.codfornec > 10
order by produto.codproduto
limit 100;