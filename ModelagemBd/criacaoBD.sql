-- Inserir Clientes
INSERT INTO Cliente (Nome, CPF, Email, Telefone, Data_cadastro) VALUES
('Ana Silva', '111.111.111-11', 'ana@email.com', '11999990001', '2023-01-10'),
('Bruno Souza', '222.222.222-22', 'bruno@email.com', '11999990002', '2023-02-15'),
('Carla Dias', '333.333.333-33', 'carla@email.com', '11999990003', '2023-03-20'),
('Daniel Lima', '444.444.444-44', 'daniel@email.com', '11999990004', '2023-04-12'),
('Eduardo Alves', '555.555.555-55', 'edu@email.com', '11999990005', '2023-05-05'),
('Fernanda Rocha', '666.666.666-66', 'fer@email.com', '11999990006', '2023-06-18'),
('Gabriel Costa', '777.777.777-77', 'gabriel@email.com', '11999990007', '2023-07-01'),
('Helena Martins', '888.888.888-88', 'helena@email.com', '11999990008', '2023-07-25');

-- Inserir Funcionários
INSERT INTO Funcionario (Nome, CPF, Email, Telefone, Cargo) VALUES
('Marcos Silva', '999.111.111-11', 'marcos@email.com', '11333330001', 'Atendente'),
('Paula Ribeiro', '999.222.222-22', 'paula@email.com', '11333330002', 'Atendente'),
('Roberto Santos', '999.333.333-33', 'roberto@email.com', '11333330003', 'Gerente'),
('Sofia Almeida', '999.444.444-44', 'sofia@email.com', '11333330004', 'Mecânica'),
('Thiago Melo', '999.555.555-55', 'thiago@email.com', '11333330005', 'Mecânico'),
('Isabela Nunes', '999.666.666-66', 'isabela@email.com', '11333330006', 'Financeiro'),
('Lucas Fernandes', '999.777.777-77', 'lucas@email.com', '11333330007', 'Atendente'),
('Patrícia Gomes', '999.888.888-88', 'patricia@email.com', '11333330008', 'Mecânica');

-- Inserir Veículos
INSERT INTO Veiculo (Modelo, Cor, Ano_fabricacao, Placa, Valor_diaria, Status) VALUES
('Onix', 'Preto', 2020, 'ABC1D23', 120.00, 'disponivel'),
('Civic', 'Branco', 2019, 'DEF4G56', 180.00, 'alugado'),
('Corolla', 'Prata', 2021, 'HIJ7K89', 200.00, 'disponivel'),
('Gol', 'Vermelho', 2018, 'LMN0P12', 100.00, 'em manutencao'),
('HB20', 'Azul', 2022, 'QRS3T45', 140.00, 'disponivel'),
('Compass', 'Cinza', 2021, 'UVW6X78', 250.00, 'disponivel'),
('Fiesta', 'Verde', 2017, 'YZA9B01', 90.00, 'alugado'),
('Tracker', 'Preto', 2023, 'CDE2F34', 220.00, 'disponivel');

-- Inserir Aluguéis
INSERT INTO Aluguel (ID_Funcionario, ID_Veiculo, ID_Cliente, Data_inicio, Data_fim, Valor_total, Status) VALUES
(1, 2, 1, '2023-08-01', '2023-08-05', 720.00, 'finalizado'),
(2, 7, 2, '2023-08-10', '2023-08-15', 450.00, 'finalizado'),
(3, 1, 3, '2023-08-20', '2023-08-22', 240.00, 'finalizado'),
(1, 5, 4, '2023-09-01', '2023-09-03', 280.00, 'ativo'),
(2, 3, 5, '2023-09-05', '2023-09-10', 1000.00, 'ativo'),
(3, 6, 6, '2023-09-08', '2023-09-12', 1000.00, 'pendente'),
(1, 4, 7, '2023-09-10', '2023-09-15', 500.00, 'pendente'),
(2, 8, 8, '2023-09-12', '2023-09-14', 440.00, 'ativo');

-- Inserir Pagamentos
INSERT INTO Pagamento (ID_Aluguel, Data, Valor, Status, Metodo) VALUES
(1, '2023-08-05', 720.00, 'concluido', 'cartao'),
(2, '2023-08-15', 450.00, 'concluido', 'pix'),
(3, '2023-08-22', 240.00, 'concluido', 'boleto'),
(4, '2023-09-03', 280.00, 'pendente', 'pix'),
(5, '2023-09-10', 1000.00, 'pendente', 'cartao'),
(6, '2023-09-12', 1000.00, 'pendente', 'boleto'),
(7, '2023-09-15', 500.00, 'pendente', 'pix'),
(8, '2023-09-14', 440.00, 'pendente', 'cartao');

-- Inserir Manutenções
INSERT INTO Manutencao (ID_Veiculo, ID_Funcionario, Descricao_servico, Data, Valor) VALUES
(4, 4, 'Troca de óleo e filtros', '2023-07-01', 250.00),
(4, 5, 'Revisão completa do motor', '2023-07-15', 800.00),
(2, 8, 'Troca de pneus', '2023-07-20', 600.00),
(6, 5, 'Troca de pastilhas de freio', '2023-08-05', 300.00),
(3, 4, 'Alinhamento e balanceamento', '2023-08-12', 150.00),
(7, 5, 'Reparo no sistema elétrico', '2023-08-20', 400.00),
(1, 8, 'Polimento e revisão estética', '2023-08-25', 200.00),
(8, 4, 'Troca de bateria', '2023-09-01', 500.00);

-- Atualizar status do aluguel 4 para 'finalizado' 
UPDATE	Aluguel
SET Status = 'finalizado', Data_fim = '2023-09-03' 
WHERE ID = 4; 

-- Atualizar o pagamento correspondente para 'concluido' 
UPDATE Pagamento 
SET Status = 'concluido' 
WHERE ID_Aluguel = 4; 

UPDATE Funcionario 
SET Cargo = 'Mecânico'
WHERE ID = 4 AND 8 ; 

SELECT Cargo, COUNT(*) AS qtd_funcionarios
FROM Funcionario 
GROUP BY Cargo; 

SELECT YEAR(Data_cadastro) AS ano, COUNT(*) AS qtd_clientes 
FROM Cliente 
GROUP BY(Data_cadastro);  

SELECT Status, COUNT(*) AS qtd_veiculos
FROM Veiculo
GROUP BY Status; 

SELECT Status, SUM(Valor_total) AS receita 
FROM Aluguel 
GROUP BY Status;



  