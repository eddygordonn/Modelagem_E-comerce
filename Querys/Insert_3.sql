--3. Inserções Adicionais (Pagamento e Entrega)

--Pagamentos
INSERT INTO Pagamento (id_pedido, tipo, valor) VALUES
(1, 'Cartão', 4500.00),
(2, 'PIX', 5000.00),
(3, 'Boleto', 800.00);

--Entregas
INSERT INTO Entrega (id_pedido, status, rastreio) VALUES
(1, 'Em preparação', 'BR123456789SP'),
(2, 'Em trânsito', 'BR987654321RJ'),
(3, 'Entregue', 'BR456123789MG');
