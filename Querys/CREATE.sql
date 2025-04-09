-- Criação do banco de dados
CREATE DATABASE ecommerce;
USE ecommerce;

-- Tabela Cliente (PF/PJ)
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('PF', 'PJ') NOT NULL
);

-- Tabelas especializadas para PF/PJ
CREATE TABLE Cliente_PF (
    id_cliente INT PRIMARY KEY,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Cliente_PJ (
    id_cliente INT PRIMARY KEY,
    CNPJ VARCHAR(14) UNIQUE NOT NULL,
    razao_social VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Demais tabelas
CREATE TABLE Vendedor (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo ENUM('Terceiro', 'Interno') NOT NULL
);

CREATE TABLE Fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Estoque (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    local VARCHAR(45) NOT NULL
);

CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    status VARCHAR(45) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabelas de relacionamento
CREATE TABLE Vendedor_Produto (
    id_vendedor INT,
    id_produto INT,
    PRIMARY KEY (id_vendedor, id_produto),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id_vendedor),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Produto_Estoque (
    id_produto INT,
    id_estoque INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_produto, id_estoque),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY (id_estoque) REFERENCES Estoque(id_estoque)
);

-- Queries de exemplo (continuação no repositório GitHub)
