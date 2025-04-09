--2. Inserções nas Tabelas de Relacionamento (N:N)

-- Vendedor_Produto
INSERT INTO Vendedor_Produto (id_vendedor, id_produto) VALUES
(1, 1),  -- Carlos vende Notebook Dell
(2, 2),  -- Ana vende Smartphone Samsung
(3, 3);  -- Bia vende Mesa de Escritório

--Produto_Estoque
INSERT INTO Produto_Estoque (id_produto, id_estoque, quantidade) VALUES
(1, 1, 10),  -- Notebook Dell no Armazém SP (10 unidades)
(2, 2, 15),  -- Smartphone Samsung no Centro RJ (15 unidades)
(3, 3, 5);   -- Mesa de Escritório em MG (5 unidades)

--Produto_Pedido (Itens por Pedido)
INSERT INTO Produto_Pedido (id_produto, id_pedido, quantidade) VALUES
(1, 1, 1),  -- Pedido 1: 1 Notebook Dell
(2, 2, 2),  -- Pedido 2: 2 Smartphones Samsung
(3, 3, 1);  -- Pedido 3: 1 Mesa de Escritório



