USE `db_ecommerce` ;

-- Recuperação simples
SELECT categoria,descrição FROM db_ecommerce.produto;

SELECT PNome as Nome, Sobrenome FROM db_ecommerce.pessoa_fisica;

-- Filtros com WHERE
SELECT categoria,descrição,valor FROM db_ecommerce.produto WHERE categoria ='Alimentação';

SELECT categoria,descrição,valor FROM db_ecommerce.produto WHERE valor >= 4;

-- Expressão para atributo derivado (valor total do estoque de cada produto)
SELECT p.idProduto, p.Descrição, e.Quantidade, (p.Valor * e.Quantidade) AS ValorTotalEstoque
FROM db_ecommerce.produto p
JOIN db_ecommerce.estocarproduto e ON p.idProduto = e.Produto_idProduto;

-- Valor total do estoque agrupado por categoria
SELECT p.Categoria, SUM(p.Valor * e.Quantidade) AS ValorTotalPorCategoria
FROM db_ecommerce.produto p
JOIN db_ecommerce.estocarproduto e ON p.idProduto = e.Produto_idProduto
GROUP BY p.Categoria;

-- Valor total do estoque apenas para produtos com valor unitário acima de 10
SELECT p.idProduto, p.Descrição, e.Quantidade, (p.Valor * e.Quantidade) AS ValorTotalEstoque
FROM db_ecommerce.produto p
JOIN db_ecommerce.estocarproduto e ON p.idProduto = e.Produto_idProduto
WHERE p.Valor > 10;

-- Ordenação dos dados
SELECT categoria,descrição,valor FROM db_ecommerce.produto ORDER BY Valor DESC;

-- Ordenar produtos por nome (descrição) em ordem alfabética
SELECT categoria, descrição, valor FROM db_ecommerce.produto ORDER BY descrição ASC;

-- Ordenar pessoas físicas por data de nascimento (mais novos primeiro)
SELECT PNome, Sobrenome, dataDeNascimento FROM db_ecommerce.pessoa_fisica ORDER BY dataDeNascimento DESC;

-- Filtros aos grupos com HAVING (produtos com estoque total maior que 15) não
SELECT p.idProduto, p.Descrição, SUM(e.Quantidade) AS EstoqueTotal
FROM db_ecommerce.produto p
JOIN db_ecommerce.estocarproduto e ON p.idProduto = e.Produto_idProduto
GROUP BY p.idProduto, p.Descrição
HAVING SUM(e.Quantidade) > 5;

-- Categorias com valor total de estoque acima de 100
SELECT p.Categoria, SUM(p.Valor * e.Quantidade) AS ValorTotalEstoque
FROM db_ecommerce.produto p
JOIN db_ecommerce.estocarproduto e ON p.idProduto = e.Produto_idProduto
GROUP BY p.Categoria
HAVING SUM(p.Valor * e.Quantidade) > 100;

-- Exemplos de produtos com quantidade média em estoque maior que 10
SELECT p.idProduto, p.Descrição, AVG(e.Quantidade) AS MediaEstoque
FROM db_ecommerce.produto p
JOIN db_ecommerce.estocarproduto e ON p.idProduto = e.Produto_idProduto
GROUP BY p.idProduto, p.Descrição
HAVING AVG(e.Quantidade) > 10;

-- Junção entre tabelas (pedidos com nome do cliente)
SELECT ped.idPedido, ped.Descrição, cli.idCliente, pf.PNome AS NomeCliente
FROM db_ecommerce.pedido ped
JOIN db_ecommerce.cliente cli ON ped.Cliente_idCliente = cli.idCliente
LEFT JOIN db_ecommerce.pessoa_fisica pf ON cli.idCliente = pf.Cliente_idCliente;

-- Exemplos de pedidos com nome do cliente pessoa jurídica
SELECT ped.idPedido, ped.Descrição, cli.idCliente, pj.Nome AS NomeCliente
FROM db_ecommerce.pedido ped
JOIN db_ecommerce.cliente cli ON ped.Cliente_idCliente = cli.idCliente
LEFT JOIN db_ecommerce.pessoa_juridica pj ON cli.idCliente = pj.Cliente_idCliente;

-- Listar pedidos, nome do cliente e status do pedido
SELECT ped.idPedido, ped.Descrição, ped.Status_do_pedido, cli.idCliente, pf.PNome AS NomeCliente
FROM db_ecommerce.pedido ped
JOIN db_ecommerce.cliente cli ON ped.Cliente_idCliente = cli.idCliente
LEFT JOIN db_ecommerce.pessoa_fisica pf ON cli.idCliente = pf.Cliente_idCliente;

-- Junção entre produto, fornecedor e estoque
SELECT p.Descrição AS Produto, f.RazaoSocial AS Fornecedor, e.Quantidade AS Estoque
FROM db_ecommerce.produto p
JOIN db_ecommerce.disponibilizandoUmProduto dp ON p.idProduto = dp.Produto_idProduto
JOIN db_ecommerce.fornecedor f ON dp.Fornecedor_idFornecedor = f.idFornecedor
JOIN db_ecommerce.estocarproduto e ON p.idProduto = e.Produto_idProduto;

-- Perguntas para embasar as queries:

-- Quantos pedidos foram feitos por cada cliente?
SELECT cli.idCliente, pf.PNome AS NomeCliente, COUNT(ped.idPedido) AS TotalPedidos
FROM db_ecommerce.cliente cli
LEFT JOIN db_ecommerce.pedido ped ON cli.idCliente = ped.Cliente_idCliente
LEFT JOIN db_ecommerce.pessoa_fisica pf ON cli.idCliente = pf.Cliente_idCliente
GROUP BY cli.idCliente, pf.PNome;

-- Quantos pedidos foram feitos por cada cliente pessoa jurídica?
SELECT cli.idCliente, pj.Nome AS NomeCliente, COUNT(ped.idPedido) AS TotalPedidos
FROM db_ecommerce.cliente cli
LEFT JOIN db_ecommerce.pedido ped ON cli.idCliente = ped.Cliente_idCliente
LEFT JOIN db_ecommerce.pessoa_juridica pj ON cli.idCliente = pj.Cliente_idCliente
GROUP BY cli.idCliente, pj.Nome;

-- Algum vendedor também é fornecedor?
SELECT v.idVendedorTerceiro, v.RazaoSocial
FROM db_ecommerce.vendedorTerceiro v
INNER JOIN db_ecommerce.fornecedor f ON v.CNPJ = f.CNPJ;

-- Relação de produtos, fornecedores e estoques
SELECT p.idProduto, p.Descrição, f.idFornecedor, f.RazaoSocial, e.idEstoque, e.Local, ep.Quantidade
FROM db_ecommerce.produto p
JOIN db_ecommerce.disponibilizandoUmProduto dp ON p.idProduto = dp.Produto_idProduto
JOIN db_ecommerce.fornecedor f ON dp.Fornecedor_idFornecedor = f.idFornecedor
JOIN db_ecommerce.estocarProduto ep ON p.idProduto = ep.Produto_idProduto
JOIN db_ecommerce.estoque e ON ep.Estoque_idEstoque = e.idEstoque;

-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.RazaoSocial AS NomeFornecedor, p.Descrição AS NomeProduto
FROM db_ecommerce.fornecedor f
JOIN db_ecommerce.disponibilizandoUmProduto dp ON f.idFornecedor = dp.Fornecedor_idFornecedor
JOIN db_ecommerce.produto p ON dp.Produto_idProduto = p.idProduto;

