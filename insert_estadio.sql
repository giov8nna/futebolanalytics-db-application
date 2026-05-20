USE futebol_analytics;

-- ==========================================
-- ESTÁDIOS - SÉRIE D (2024)
-- ==========================================
INSERT IGNORE INTO estadios (nome, capacidade, cidade) VALUES 
-- Região Norte (Grupo A1 e parte do A2)
('Arena da Floresta', 13700, 'Rio Branco'),
('Estádio Florestão', 10000, 'Rio Branco'),
('Arena da Amazônia', 44000, 'Manaus'),
('Estádio Ismael Benigno', 10451, 'Manaus'),
('Estádio Gilberto Mestrinho', 8000, 'Manacapuru'),
('Estádio Zerão', 13680, 'Macapá'),
('Estádio Aluízio Ferreira', 7000, 'Porto Velho'),
('Estádio Canarinho', 4556, 'Boa Vista'),
('Estádio Zinho de Oliveira', 5000, 'Marabá'),
('Parque do Bacurau', 8000, 'Cametá'),

-- Região Nordeste (Grupos A2, A3 e A4)
('Estádio Castelão', 40149, 'São Luís'),
('Estádio Nhozinho Santos', 11489, 'São Luís'),
('Estádio Albertão', 44200, 'Teresina'),
('Estádio Lindolfo Monteiro', 5144, 'Teresina'),
('Estádio Domingão', 10500, 'Horizonte'),
('Estádio Almirante Dutra', 3000, 'Maracanaú'),
('Estádio Morenão', 3300, 'Iguatu'),
('Estádio Marizão', 5400, 'Sousa'),
('Estádio Amigão', 19000, 'Campina Grande'),
('Arena das Dunas', 31375, 'Natal'),
('Estádio Nogueirão', 5000, 'Mossoró'),
('Estádio Barretão', 10000, 'Ceará-Mirim'),
('Estádio Coaracy da Mata Fonseca', 12500, 'Arapiraca'),
('Estádio Juca Sampaio', 7000, 'Palmeira dos Índios'),
('Estádio Eliel Martins', 5000, 'Riachão do Jacuípe'),
('Estádio Adauto Moraes', 8000, 'Juazeiro'),
('Estádio de Pituaçu', 32157, 'Salvador'),
('Arena Pernambuco', 44300, 'São Lourenço da Mata'),
('Estádio Paulo Coelho', 5000, 'Petrolina'),
('Estádio Mendonção', 11224, 'Itabaiana'),
('Estádio Batistão', 15586, 'Aracaju'),

-- Região Centro-Oeste (Grupo A5 e parte do A7)
('Estádio Serejão', 27000, 'Taguatinga'),
('Estádio Defelê', 1500, 'Brasília'),
('Estádio Jonas Duarte', 10707, 'Anápolis'),
('Estádio Genervino da Fonseca', 8500, 'Catalão'),
('Estádio Ferreirão', 3500, 'Iporá'),
('Estádio Luthero Lopes', 19000, 'Rondonópolis'),
('Arena Pantanal', 42900, 'Cuiabá'),
('Estádio Nilton Santos (Palmas)', 12000, 'Palmas'),
('Estádio Ribeirão', 8000, 'Tocantinópolis'),
('Estádio Laertão', 5000, 'Costa Rica'),

-- Região Sudeste (Grupo A6 e A7)
('Estádio José Olímpio da Rocha', 5281, 'Águia Branca'),
('Estádio Robertão', 2000, 'Serra'),
('Arena do Jacaré', 18870, 'Sete Lagoas'),
('Ipatingão', 10000, 'Ipatinga'),
('Estádio Manduzão', 26000, 'Pouso Alegre'),
('Estádio Pedro Alves do Nascimento', 8000, 'Patrocínio'),
('Estádio Moça Bonita', 9024, 'Rio de Janeiro'),
('Estádio Luso-Brasileiro', 5044, 'Rio de Janeiro'),
('Estádio Laranjão', 1810, 'Nova Iguaçu'),
('Distrital do Inamar', 10000, 'Diadema'),
('Estádio Major José Levy Sobrinho', 18000, 'Limeira'),
('Estádio Bruno José Daniel', 12000, 'Santo André'),
('Estádio Martins Pereira', 12215, 'São José dos Campos'),

-- Região Sul (Grupo A8)
('Estádio Willie Davids', 16000, 'Maringá'),
('Estádio Olímpico Regional', 28125, 'Cascavel'),
('Estádio Albino Turbay', 3000, 'Cianorte'),
('Estádio dos Eucaliptos', 3000, 'Santa Cruz do Sul'),
('Estádio Bento Freitas', 10400, 'Pelotas'),
('Estádio do Vale', 5196, 'Novo Hamburgo'),
('Estádio Dr. Hercílio Luz', 6000, 'Itajaí'),
('Estádio Domingos Machado de Lima', 5000, 'Concórdia'),
('Estádio Aníbal Costa', 3570, 'Tubarão');