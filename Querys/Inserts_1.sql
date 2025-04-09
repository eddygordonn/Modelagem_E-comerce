--1. Inserções nas Tabelas Principais
--Clientes (PF e PJ)

-- Clientes genéricos (tipo PF ou PJ)
INSERT INTO Cliente (tipo) VALUES ('PF'), ('PF'), ('PJ'), ('PJ');

-- Dados de Pessoa Física (PF)
INSERT INTO Cliente_PF (id_cliente, CPF, nome) VALUES
(1, '12345678901', 'João Silva'),
(2, '98765432109', 'Maria Oliveira');

-- Dados de Pessoa Jurídica (PJ)
INSERT INTO Cliente_PJ (id_cliente, CNPJ, razao_social) VALUES
(3, '12345678000199', 'Tech Solutions LTDA'),
(4, '98765432000155', 'EletroWorld SA');

--Vendedores

INSERT INTO Vendedor (nome, tipo) VALUES
('Carlos Souza', 'Terceiro'),
('Ana Lima', 'Interno'),
('Bia Martini', 'Terceiro');

--Fornecedores
INSERT INTO Fornecedor (nome) VALUES
('ElectroSupply'),
('TechParts'),
('HomeGoods');

--Produtos
INSERT INTO Produto (nome, preco, id_fornecedor) VALUES
('Notebook Dell', 4500.00, 1),
('Smartphone Samsung', 2500.00, 2),
('Mesa de Escritório', 800.00, 3),
('Teclado Mecânico', 300.00, 1);

--Estoques
INSERT INTO Estoque (local) VALUES
('Armazém SP'),
('Centro RJ'),
('Distribuidora MG');

--Pedidos
INSERT INTO Pedido (id_cliente, status) VALUES
(1, 'Em processamento'),
(2, 'Enviado'),
(3, 'Entregue'),
(4, 'Cancelado');

