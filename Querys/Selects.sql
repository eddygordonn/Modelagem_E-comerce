--Pergunta 1: "Quantos pedidos foram feitos por cada cliente?"

SELECT 
    c.id_cliente, 
    IFNULL(pf.nome, pj.razao_social) AS nome_cliente,
    COUNT(p.id_pedido) AS total_pedidos
FROM Cliente c
LEFT JOIN Cliente_PF pf ON c.id_cliente = pf.id_cliente AND c.tipo = 'PF'
LEFT JOIN Cliente_PJ pj ON c.id_cliente = pj.id_cliente AND c.tipo = 'PJ'
LEFT JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente
ORDER BY total_pedidos DESC;

--Pergunta 2: "Relação de produtos, fornecedores e estoques"
SELECT 
    pr.nome AS produto,
    f.nome AS fornecedor,
    e.local AS local_estoque,
    pe.quantidade
FROM Produto pr
JOIN Fornecedor f ON pr.id_fornecedor = f.id_fornecedor
JOIN Produto_Estoque pe ON pr.id_produto = pe.id_produto
JOIN Estoque e ON pe.id_estoque = e.id_estoque
WHERE pe.quantidade > 0
ORDER BY pr.nome;

--Listar Todos os Clientes (PF e PJ)
SELECT 
    c.id_cliente,
    c.tipo,
    IF(c.tipo = 'PF', pf.nome, pj.razao_social) AS nome_razao_social,
    IF(c.tipo = 'PF', pf.CPF, pj.CNPJ) AS documento
FROM 
    Cliente c
LEFT JOIN Cliente_PF pf ON c.id_cliente = pf.id_cliente AND c.tipo = 'PF'
LEFT JOIN Cliente_PJ pj ON c.id_cliente = pj.id_cliente AND c.tipo = 'PJ';

--Listar Todos os Produtos com Preço > R$ 1000
SELECT nome, preco
FROM Produto
WHERE preco > 1000
ORDER BY preco DESC;

--Pedidos com Status "Enviado" ou "Entregue"
SELECT 
    p.id_pedido,
    c.tipo AS tipo_cliente,
    IF(c.tipo = 'PF', pf.nome, pj.razao_social) AS cliente,
    p.status
FROM 
    Pedido p
JOIN Cliente c ON p.id_cliente = c.id_cliente
LEFT JOIN Cliente_PF pf ON c.id_cliente = pf.id_cliente AND c.tipo = 'PF'
LEFT JOIN Cliente_PJ pj ON c.id_cliente = pj.id_cliente AND c.tipo = 'PJ'
WHERE 
    p.status IN ('Enviado', 'Entregue');
























