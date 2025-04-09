--4. Verificação dos Dados Inseridos

--Para confirmar os dados, execute queries como:
-- Listar todos os clientes (PF/PJ)
SELECT c.id_cliente, c.tipo, IFNULL(pf.nome, pj.razao_social) AS nome, IFNULL(pf.CPF, pj.CNPJ) AS documento
FROM Cliente c
LEFT JOIN Cliente_PF pf ON c.id_cliente = pf.id_cliente AND c.tipo = 'PF'
LEFT JOIN Cliente_PJ pj ON c.id_cliente = pj.id_cliente AND c.tipo = 'PJ';

-- Listar produtos com estoque
SELECT p.nome AS produto, e.local AS estoque, pe.quantidade
FROM Produto p
JOIN Produto_Estoque pe ON p.id_produto = pe.id_produto
JOIN Estoque e ON pe.id_estoque = e.id_estoque;
