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
