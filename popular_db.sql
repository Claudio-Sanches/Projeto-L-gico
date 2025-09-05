USE `db_ecommerce` ;

-- Dados de exemplo para pessoa física
INSERT INTO `db_ecommerce`.`pessoa_fisica` (`idPessoa_Fisica`, `PNome`, `NomeDoMeio`, `Sobrenome`, `CPF`, `Endereço`, `dataDeNascimento`, `Cliente_idCliente`) VALUES
(1, 'João', 'A', 'Silva', '12345678901', 'Rua 1', '1990-01-01', 1),
(2, 'Maria', 'B', 'Souza', '23456789012', 'Rua 2', '1985-02-02', 2),
(3, 'Carlos', 'C', 'Oliveira', '34567890123', 'Rua 3', '1978-03-03', 3),
(4, 'Ana', 'D', 'Costa', '45678901234', 'Rua 4', '1992-04-04', 4),
(5, 'Pedro', 'E', 'Santos', '56789012345', 'Rua 5', '1980-05-05', 5),
(6, 'Fernanda', 'F', 'Ribeiro', '67890123456', 'Rua 6', '1995-06-06', 6),
(7, 'Lucas', 'G', 'Martins', '78901234567', 'Rua 7', '1988-07-07', 7),
(8, 'Juliana', 'H', 'Barros', '89012345678', 'Rua 8', '1993-08-08', 8),
(9, 'Rafael', 'I', 'Pereira', '90123456789', 'Rua 9', '1982-09-09', 9),
(10, 'Patricia', 'J', 'Almeida', '01234567890', 'Rua 10', '1991-10-10', 10),
(11, 'Bruno', 'K', 'Mendes', '11234567891', 'Rua 11', '1987-11-11', 11),
(12, 'Camila', 'L', 'Ferreira', '12234567892', 'Rua 12', '1994-12-12', 12),
(13, 'Eduardo', 'M', 'Rocha', '13234567893', 'Rua 13', '1983-01-13', 13),
(14, 'Aline', 'N', 'Gomes', '14234567894', 'Rua 14', '1996-02-14', 14),
(15, 'Felipe', 'O', 'Dias', '15234567895', 'Rua 15', '1989-03-15', 15),
(16, 'Vanessa', 'P', 'Carvalho', '16234567896', 'Rua 16', '1997-04-16', 16),
(17, 'Rodrigo', 'Q', 'Monteiro', '17234567897', 'Rua 17', '1984-05-17', 17),
(18, 'Larissa', 'R', 'Moraes', '18234567898', 'Rua 18', '1998-06-18', 18),
(19, 'Gustavo', 'S', 'Vieira', '19234567899', 'Rua 19', '1986-07-19', 19),
(20, 'Isabela', 'T', 'Castro', '20234567890', 'Rua 20', '1999-08-20', 20);

-- Dados de exemplo para pessoa juridica
INSERT INTO `db_ecommerce`.`pessoa_juridica` (`idPessoa_Juridica`, `Nome`, `CNPJ`, `Endereço`, `Cliente_idCliente`) VALUES
(1, 'Empresa A', '12345678000101', 'Av. 1', 21),
(2, 'Empresa B', '22345678000102', 'Av. 2', 22),
(3, 'Empresa C', '32345678000103', 'Av. 3', 23),
(4, 'Empresa D', '42345678000104', 'Av. 4', 24),
(5, 'Empresa E', '52345678000105', 'Av. 5', 25),
(6, 'Empresa F', '62345678000106', 'Av. 6', 26),
(7, 'Empresa G', '72345678000107', 'Av. 7', 27),
(8, 'Empresa H', '82345678000108', 'Av. 8', 28),
(9, 'Empresa I', '92345678000109', 'Av. 9', 29),
(10, 'Empresa J', '10345678000110', 'Av. 10', 30),
(11, 'Empresa K', '11345678000111', 'Av. 11', 31),
(12, 'Empresa L', '12345678000112', 'Av. 12', 32),
(13, 'Empresa M', '13345678000113', 'Av. 13', 33),
(14, 'Empresa N', '14345678000114', 'Av. 14', 34),
(15, 'Empresa O', '15345678000115', 'Av. 15', 35),
(16, 'Empresa P', '16345678000116', 'Av. 16', 36),
(17, 'Empresa Q', '17345678000117', 'Av. 17', 37),
(18, 'Empresa R', '18345678000118', 'Av. 18', 38),
(19, 'Empresa S', '19345678000119', 'Av. 19', 39),
(20, 'Empresa T', '20345678000120', 'Av. 20', 40);

-- Dados de exemplo para cliente
-- IDs 1 a 20 para pessoa física, 21 a 40 para pessoa juridica
INSERT INTO `db_ecommerce`.`cliente` (`idCliente`) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),
(31), (32), (33), (34), (35), (36), (37), (38), (39), (40);

-- Dados de exemplo para produtos de alimentação
INSERT INTO `db_ecommerce`.`produto` (`idProduto`, `Categoria`, `Descrição`, `Valor`) VALUES
(1, 'Alimentação', 'Arroz 1kg', 7),
(2, 'Alimentação', 'Feijão 1kg', 8),
(3, 'Alimentação', 'Macarrão 500g', 5),
(4, 'Alimentação', 'Óleo de soja 900ml', 9),
(5, 'Alimentação', 'Açúcar 1kg', 6),
(6, 'Alimentação', 'Sal 1kg', 3),
(7, 'Alimentação', 'Farinha de trigo 1kg', 7),
(8, 'Alimentação', 'Café 500g', 15),
(9, 'Alimentação', 'Leite 1L', 6),
(10, 'Alimentação', 'Biscoito 400g', 4),
(11, 'Alimentação', 'Margarina 500g', 8),
(12, 'Alimentação', 'Molho de tomate 340g', 5),
(13, 'Alimentação', 'Atum enlatado 170g', 7),
(14, 'Alimentação', 'Sardinha enlatada 125g', 6),
(15, 'Alimentação', 'Ervilha enlatada 200g', 4),
(16, 'Alimentação', 'Milho enlatado 200g', 4),
(17, 'Alimentação', 'Presunto fatiado 200g', 10),
(18, 'Alimentação', 'Queijo mussarela 200g', 12),
(19, 'Alimentação', 'Iogurte natural 170g', 3),
(20, 'Alimentação', 'Suco de laranja 1L', 7);

-- Dados de exemplo para pedidos
INSERT INTO `db_ecommerce`.`pedido` (`idPedido`, `Status_do_pedido`, `Descrição`, `Cliente_idCliente`) VALUES
(1, 'Enviado', 'Pedido de arroz e feijão', 1),
(2, 'Processando', 'Pedido de café e leite', 2),
(3, 'Entregue', 'Pedido de biscoito e açúcar', 3),
(4, 'Cancelado', 'Pedido de óleo e farinha', 4),
(5, 'Enviado', 'Pedido de presunto e queijo', 5),
(6, 'Processando', 'Pedido de suco e iogurte', 6),
(7, 'Entregue', 'Pedido de sardinha e atum', 7),
(8, 'Enviado', 'Pedido de milho e ervilha', 8),
(9, 'Processando', 'Pedido de margarina e molho de tomate', 9),
(10, 'Entregue', 'Pedido de arroz, feijão e café', 10);

-- Dados de exemplo para fornecedores
INSERT INTO `db_ecommerce`.`fornecedor` (`idFornecedor`, `RazaoSocial`, `CNPJ`) VALUES
(1, 'Fornecedor A', '11111111000101'),
(2, 'Fornecedor B', '22222222000102'),
(3, 'Fornecedor C', '33333333000103'),
(4, 'Fornecedor D', '44444444000104'),
(5, 'Fornecedor E', '55555555000105'),
(6, 'Fornecedor F', '66666666000106'),
(7, 'Fornecedor G', '77777777000107'),
(8, 'Fornecedor H', '88888888000108'),
(9, 'Fornecedor I', '99999999000109'),
(10, 'Fornecedor J', '10101010000110'),
(11, 'Fornecedor K', '11111111000111'),
(12, 'Fornecedor L', '12121212000112'),
(13, 'Fornecedor M', '13131313000113'),
(14, 'Fornecedor N', '14141414000114'),
(15, 'Fornecedor O', '15151515000115'),
(16, 'Fornecedor P', '16161616000116');

-- Dados de exemplo para estoque
INSERT INTO `db_ecommerce`.`estoque` (`idEstoque`, `Local`) VALUES
(1, 'Depósito 1'), (2, 'Depósito 2'), (3, 'Depósito 3'), (4, 'Depósito 4'), (5, 'Depósito 5'),
(6, 'Depósito 6'), (7, 'Depósito 7'), (8, 'Depósito 8'), (9, 'Depósito 9'), (10, 'Depósito 10'),
(11, 'Depósito 11'), (12, 'Depósito 12'), (13, 'Depósito 13'), (14, 'Depósito 14'), (15, 'Depósito 15'),
(16, 'Depósito 16'), (17, 'Depósito 17'), (18, 'Depósito 18'), (19, 'Depósito 19'), (20, 'Depósito 20');

-- Dados de exemplo para estocar_produto
INSERT INTO `db_ecommerce`.`estocarproduto` (`Produto_idProduto`, `Estoque_idEstoque`, `Quantidade`) VALUES
(1, 1, 10),
(2, 2, 15),
(3, 3, 20),
(4, 4, 12),
(5, 5, 8),
(6, 6, 25),
(7, 7, 18),
(8, 8, 30),
(9, 9, 14),
(10, 10, 22);

-- Dados de exemplo para disponibilizarUmProduto
INSERT INTO `db_ecommerce`.`disponibilizandoUmProduto` (`Fornecedor_idFornecedor`, `Produto_idProduto`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);