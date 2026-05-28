INSERT INTO ligas (nome, pais, divisao) VALUES ('Campeonato Brasileiro Série D', 'Brasil', 'Quarta Divisão');

INSERT INTO temporadas (id_liga, ano, data_inicio, data_fim) VALUES (1, 2024, '2024-04-27', '2024-09-29');

-- ==========================================
-- PARTIDAS REAIS: 1ª RODADA - SÉRIE D 2024 (Grupos A1 ao A4)
-- ==========================================
INSERT INTO partidas (id_temporada, id_estadio, id_juiz, id_time_mandante, id_time_visitante, data_partida, placar_casa, placar_fora, publico, rodada) VALUES
-- ------------------------------------------
-- GRUPO A1
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Ismael Benigno'),
(SELECT id_juiz FROM juizes WHERE nome = 'Everton Moreira Prates'),
(SELECT id_time FROM times WHERE nome = 'Manauara'),
(SELECT id_time FROM times WHERE nome = 'Rio Branco'), '2024-04-27 16:00:00', 3, 1, 76, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Gilberto Mestrinho'),
(SELECT id_juiz FROM juizes WHERE nome = 'Rafael Santos de Andrade'),
(SELECT id_time FROM times WHERE nome = 'Princesa do Solimões'),
(SELECT id_time FROM times WHERE nome = 'São Raimundo-RR'), '2024-04-27 18:00:00', 2, 0, 295, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Zerão'),
(SELECT id_juiz FROM juizes WHERE nome = 'Dagoberto Silva Modesto'),
(SELECT id_time FROM times WHERE nome = 'Trem'),
(SELECT id_time FROM times WHERE nome = 'Manaus'), '2024-04-28 16:00:00', 0, 0, 84, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Florestão'),
(SELECT id_juiz FROM juizes WHERE nome = 'Moisés Estevão de Moura'),
(SELECT id_time FROM times WHERE nome = 'Humaitá'),
(SELECT id_time FROM times WHERE nome = 'Porto Velho'), '2024-05-01 17:00:00', 0, 1, 95, 1),

-- ------------------------------------------
-- GRUPO A2
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Albertão'),
(SELECT id_juiz FROM juizes WHERE nome = 'Antonio Carlos Pequeno Frutuoso'),
(SELECT id_time FROM times WHERE nome = 'River'),
(SELECT id_time FROM times WHERE nome = 'Águia de Marabá'), '2024-04-27 16:00:00', 2, 1, 444, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Lindolfo Monteiro'),
(SELECT id_juiz FROM juizes WHERE nome = 'Julian Negreiros de Castro'),
(SELECT id_time FROM times WHERE nome = 'Fluminense-PI'),
(SELECT id_time FROM times WHERE nome = 'Maranhão'), '2024-04-28 16:00:00', 1, 2, 165, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Nhozinho Santos'),
(SELECT id_juiz FROM juizes WHERE nome = 'Wallas Martins Lopes'),
(SELECT id_time FROM times WHERE nome = 'Moto Club'),
(SELECT id_time FROM times WHERE nome = 'Tocantinópolis'), '2024-04-28 16:00:00', 2, 2, 463, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Parque do Bacurau'),
(SELECT id_juiz FROM juizes WHERE nome = 'Cianã da Silva Sousa'),
(SELECT id_time FROM times WHERE nome = 'Cametá'),
(SELECT id_time FROM times WHERE nome = 'Altos'), '2024-04-28 16:00:00', 0, 1, 731, 1),

-- ------------------------------------------
-- GRUPO A3
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Barretão'),
(SELECT id_juiz FROM juizes WHERE nome = 'Marianna Nanni Batalha'),
(SELECT id_time FROM times WHERE nome = 'Santa Cruz-RN'),
(SELECT id_time FROM times WHERE nome = 'Treze'), '2024-04-27 15:00:00', 3, 4, 0, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Domingão'),
(SELECT id_juiz FROM juizes WHERE nome = 'José Jaini Oliveira Bispo'),
(SELECT id_time FROM times WHERE nome = 'Atlético Cearense'),
(SELECT id_time FROM times WHERE nome = 'Potiguar de Mossoró'), '2024-04-27 16:00:00', 1, 2, 83, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Almirante Dutra'),
(SELECT id_juiz FROM juizes WHERE nome = 'Thayslane de Melo Costa'),
(SELECT id_time FROM times WHERE nome = 'Maracanã'),
(SELECT id_time FROM times WHERE nome = 'América-RN'), '2024-04-28 15:30:00', 1, 1, 824, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Marizão'),
(SELECT id_juiz FROM juizes WHERE nome = 'Cesar Pereira Leite'),
(SELECT id_time FROM times WHERE nome = 'Sousa'),
(SELECT id_time FROM times WHERE nome = 'Iguatu'), '2024-04-28 16:00:00', 0, 0, 692, 1),

-- ------------------------------------------
-- GRUPO A4
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Batistão'),
(SELECT id_juiz FROM juizes WHERE nome = 'Paulo Belence Alves dos Prazeres Filho'),
(SELECT id_time FROM times WHERE nome = 'Sergipe'),
(SELECT id_time FROM times WHERE nome = 'ASA'), '2024-04-27 16:00:00', 2, 3, 1628, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Adauto Moraes'),
(SELECT id_juiz FROM juizes WHERE nome = 'Jonata de Souza Gouveia'),
(SELECT id_time FROM times WHERE nome = 'Juazeirense'),
(SELECT id_time FROM times WHERE nome = 'Itabaiana'), '2024-04-27 16:00:00', 1, 1, 384, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Paulo Coelho'),
(SELECT id_juiz FROM juizes WHERE nome = 'José Ricardo Vasconcellos Laranjeira'),
(SELECT id_time FROM times WHERE nome = 'Petrolina'),
(SELECT id_time FROM times WHERE nome = 'Jacuipense'), '2024-04-27 16:00:00', 0, 0, 199, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Juca Sampaio'),
(SELECT id_juiz FROM juizes WHERE nome = 'Michelangelo Martins de Almeida Junior'),
(SELECT id_time FROM times WHERE nome = 'CSE'),
(SELECT id_time FROM times WHERE nome = 'Retrô'), '2024-04-27 19:00:00', 0, 0, 751, 1),

-- ------------------------------------------
-- GRUPO A5
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Ferreirão'), 
(SELECT id_juiz FROM juizes WHERE nome = 'Renan Novaes Insabralde'),
(SELECT id_time FROM times WHERE nome = 'Iporá'),
(SELECT id_time FROM times WHERE nome = 'União Rondonópolis'), '2024-04-27 15:00:00', 2, 2, 350, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Nilton Santos'),
(SELECT id_juiz FROM juizes WHERE nome = 'Felipe da Silva Gonçalves Paludo'),
(SELECT id_time FROM times WHERE nome = 'Capital-TO'),
(SELECT id_time FROM times WHERE nome = 'Real Brasília'), '2024-04-27 16:00:00', 2, 0, 114, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Serejão'),
(SELECT id_juiz FROM juizes WHERE nome = 'Rodrigo Batista da Silva'),
(SELECT id_time FROM times WHERE nome = 'Brasiliense'),
(SELECT id_time FROM times WHERE nome = 'Anápolis'), '2024-04-28 15:30:00', 1, 0, 462, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Arena Pantanal'),
(SELECT id_juiz FROM juizes WHERE nome = 'Júlio César de Oliveira'),
(SELECT id_time FROM times WHERE nome = 'Mixto'),
(SELECT id_time FROM times WHERE nome = 'CRAC'), '2024-04-28 18:00:00', 1, 1, 661, 1),

-- ------------------------------------------
-- GRUPO A6
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Robertão'),
(SELECT id_juiz FROM juizes WHERE nome = 'João Vitor Gobi'),
(SELECT id_time FROM times WHERE nome = 'Serra'),
(SELECT id_time FROM times WHERE nome = 'Audax Rio'), '2024-04-27 16:00:00', 1, 0, 320, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Luso-Brasileiro'),
(SELECT id_juiz FROM juizes WHERE nome = 'Gustavo Holanda Souza'),
(SELECT id_time FROM times WHERE nome = 'Portuguesa-RJ'),
(SELECT id_time FROM times WHERE nome = 'Ipatinga'), '2024-04-27 18:30:00', 0, 0, 750, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Pituaçu'),
(SELECT id_juiz FROM juizes WHERE nome = 'Rafael Martins de Oliveira'),
(SELECT id_time FROM times WHERE nome = 'Itabuna'),
(SELECT id_time FROM times WHERE nome = 'Real Noroeste'), '2024-04-28 16:00:00', 0, 0, 0, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Arena do Jacaré'),
(SELECT id_juiz FROM juizes WHERE nome = 'Vinícius Gomes do Amaral'),
(SELECT id_time FROM times WHERE nome = 'Democrata-SL'),
(SELECT id_time FROM times WHERE nome = 'Nova Iguaçu'), '2024-04-27 16:00:00', 1, 1, 1192, 1),

-- ------------------------------------------
-- GRUPO A7
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Major José Levy Sobrinho'),
(SELECT id_juiz FROM juizes WHERE nome = 'Murilo Ugolini Pelegrini'),
(SELECT id_time FROM times WHERE nome = 'Inter de Limeira'),
(SELECT id_time FROM times WHERE nome = 'Pouso Alegre'), '2024-04-27 16:00:00', 1, 0, 712, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Pedro Alves do Nascimento'),
(SELECT id_juiz FROM juizes WHERE nome = 'Gabriel Henrique Meira Bispo'),
(SELECT id_time FROM times WHERE nome = 'Patrocinense'),
(SELECT id_time FROM times WHERE nome = 'Água Santa'), '2024-04-27 16:00:00', 0, 2, 133, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Willie Davids'),
(SELECT id_juiz FROM juizes WHERE nome = 'Leonardo Sígari Zanon'),
(SELECT id_time FROM times WHERE nome = 'Maringá'),
(SELECT id_time FROM times WHERE nome = 'Santo André'), '2024-04-29 19:30:00', 2, 1, 4992, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Martins Pereira'),
(SELECT id_juiz FROM juizes WHERE nome = 'Augusto Domingos Borges Ortega'),
(SELECT id_time FROM times WHERE nome = 'São José-SP'),
(SELECT id_time FROM times WHERE nome = 'Costa Rica'), '2024-04-27 18:00:00', 0, 0, 2822, 1),

-- ------------------------------------------
-- GRUPO A8
-- ------------------------------------------
(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio dos Eucaliptos'),
(SELECT id_juiz FROM juizes WHERE nome = 'Halbert Luis Moraes Baia'),
(SELECT id_time FROM times WHERE nome = 'Avenida'),
(SELECT id_time FROM times WHERE nome = 'FC Cascavel'), '2024-04-27 15:30:00', 1, 2, 371, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Albino Turbay'),
(SELECT id_juiz FROM juizes WHERE nome = 'William Machado Steffen'),
(SELECT id_time FROM times WHERE nome = 'Cianorte'),
(SELECT id_time FROM times WHERE nome = 'Hercílio Luz'), '2024-04-27 18:00:00', 0, 0, 530, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Dr. Hercílio Luz'),
(SELECT id_juiz FROM juizes WHERE nome = 'Tiago Augusto Kappes Diel'),
(SELECT id_time FROM times WHERE nome = 'Barra-SC'),
(SELECT id_time FROM times WHERE nome = 'Novo Hamburgo'), '2024-04-28 16:00:00', 1, 1, 270, 1),

(1, (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Domingos Machado de Lima'),
(SELECT id_juiz FROM juizes WHERE nome = 'Jonathan Benkenstein Pinheiro'),
(SELECT id_time FROM times WHERE nome = 'Concórdia'),
(SELECT id_time FROM times WHERE nome = 'Brasil de Pelotas'), '2024-04-28 17:00:00', 2, 0, 340, 1);


-- PARTIDAS: 2ª RODADA COMPLETA - SÉRIE D 2024 (A1 ao A8)
-- Resultados 100% fidedignos. Público aproximado e Juízes reaproveitados.
-- ==========================================
INSERT INTO partidas (id_temporada, id_estadio, id_juiz, id_time_mandante, id_time_visitante, data_partida, placar_casa, placar_fora, publico, rodada) VALUES 

-- ------------------------------------------
-- GRUPO A1
-- ------------------------------------------
(1, 
(SELECT id_estadio FROM estadios WHERE nome = 'Estádio Florestão'), 
(SELECT id_juiz FROM juizes WHERE nome = 'Renan Novaes Insabralde'), 
(SELECT id_time FROM times WHERE nome = 'Rio Branco'), 
(SELECT id_time FROM times WHERE nome = 'Princesa do Solimões'), '2024-05-04 17:00:00', 0, 0, 650, 2),
    
(1, 
(SELECT id_estadio FROM estadios WHERE nome = 'Estádio Canarinho'), 
(SELECT id_juiz FROM juizes WHERE nome = 'Felipe da Silva Gonçalves Paludo'), 
(SELECT id_time FROM times WHERE nome = 'São Raimundo-RR'), 
(SELECT id_time FROM times WHERE nome = 'Manauara'), '2024-05-04 17:30:00', 0, 1, 400, 2),

(1, 
(SELECT id_estadio FROM estadios WHERE nome = 'Arena da Amazônia'), 
(SELECT id_juiz FROM juizes WHERE nome = 'Rodrigo Batista da Silva'), 
(SELECT id_time FROM times WHERE nome = 'Manaus'), 
(SELECT id_time FROM times WHERE nome = 'Humaitá'), '2024-05-05 16:30:00', 1, 0, 1200, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Aluízio Ferreira'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Júlio César de Oliveira'), 
    (SELECT id_time FROM times WHERE nome = 'Porto Velho'), 
    (SELECT id_time FROM times WHERE nome = 'Trem'), '2024-05-05 16:30:00', 2, 1, 950, 2),

-- ------------------------------------------
-- GRUPO A2
-- ------------------------------------------
(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Lindolfo Monteiro'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'João Vitor Gobi'), 
    (SELECT id_time FROM times WHERE nome = 'Altos'), 
    (SELECT id_time FROM times WHERE nome = 'Moto Club'), '2024-05-04 16:00:00', 1, 2, 850, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Castelão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Rafael Martins de Oliveira'), 
    (SELECT id_time FROM times WHERE nome = 'Maranhão'), 
    (SELECT id_time FROM times WHERE nome = 'River'), '2024-05-04 16:00:00', 1, 0, 1100, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Ribeirão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Vinícius Gomes do Amaral'), 
    (SELECT id_time FROM times WHERE nome = 'Tocantinópolis'), 
    (SELECT id_time FROM times WHERE nome = 'Cametá'), '2024-05-04 17:00:00', 1, 0, 700, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Zinho de Oliveira'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Gustavo Holanda Souza'), 
    (SELECT id_time FROM times WHERE nome = 'Águia de Marabá'), 
    (SELECT id_time FROM times WHERE nome = 'Fluminense-PI'), '2024-05-06 20:00:00', 1, 1, 1450, 2),

-- ------------------------------------------
-- GRUPO A3
-- ------------------------------------------
(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Morenão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Murilo Ugolini Pelegrini'), 
    (SELECT id_time FROM times WHERE nome = 'Iguatu'), 
    (SELECT id_time FROM times WHERE nome = 'Santa Cruz-RN'), '2024-05-03 19:00:00', 2, 0, 950, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Amigão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Leonardo Sígari Zanon'), 
    (SELECT id_time FROM times WHERE nome = 'Treze'), 
    (SELECT id_time FROM times WHERE nome = 'Sousa'), '2024-05-05 16:00:00', 2, 0, 2100, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Nogueirão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Gabriel Henrique Meira Bispo'), 
    (SELECT id_time FROM times WHERE nome = 'Potiguar de Mossoró'), 
    (SELECT id_time FROM times WHERE nome = 'Maracanã'), '2024-05-05 16:00:00', 1, 2, 600, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Arena das Dunas'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Augusto Domingos Borges Ortega'), 
    (SELECT id_time FROM times WHERE nome = 'América-RN'), 
    (SELECT id_time FROM times WHERE nome = 'Atlético Cearense'), '2024-05-05 18:00:00', 3, 0, 3200, 2),

-- ------------------------------------------
-- GRUPO A4
-- ------------------------------------------
(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Pituaçu'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Halbert Luis Moraes Baia'), 
    (SELECT id_time FROM times WHERE nome = 'Jacuipense'), 
    (SELECT id_time FROM times WHERE nome = 'Sergipe'), '2024-05-04 15:00:00', 1, 1, 450, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Coaracy da Mata Fonseca'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'William Machado Steffen'), 
    (SELECT id_time FROM times WHERE nome = 'ASA'), 
    (SELECT id_time FROM times WHERE nome = 'Petrolina'), '2024-05-04 17:00:00', 1, 0, 1500, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Arena Pernambuco'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Jonathan Benkenstein Pinheiro'), 
    (SELECT id_time FROM times WHERE nome = 'Retrô'), 
    (SELECT id_time FROM times WHERE nome = 'Juazeirense'), '2024-05-05 16:00:00', 1, 0, 800, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Barretão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Tiago Augusto Kappes Diel'), 
    (SELECT id_time FROM times WHERE nome = 'Itabaiana'), 
    (SELECT id_time FROM times WHERE nome = 'CSE'), '2024-05-05 16:00:00', 3, 1, 1300, 2),

-- ------------------------------------------
-- GRUPO A5
-- ------------------------------------------
(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Defelê'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Renan Novaes Insabralde'), 
    (SELECT id_time FROM times WHERE nome = 'Real Brasília'), 
    (SELECT id_time FROM times WHERE nome = 'Iporá'), '2024-05-04 15:00:00', 0, 2, 300, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Luthero Lopes'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Felipe da Silva Gonçalves Paludo'), 
    (SELECT id_time FROM times WHERE nome = 'União Rondonópolis'), 
    (SELECT id_time FROM times WHERE nome = 'Capital-TO'), '2024-05-04 17:00:00', 0, 1, 900, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Jonas Duarte'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'João Vitor Gobi'), 
    (SELECT id_time FROM times WHERE nome = 'Anápolis'), 
    (SELECT id_time FROM times WHERE nome = 'Mixto'), '2024-05-05 16:00:00', 1, 1, 1100, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Genervino da Fonseca'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Rafael Martins de Oliveira'), 
    (SELECT id_time FROM times WHERE nome = 'CRAC'), 
    (SELECT id_time FROM times WHERE nome = 'Brasiliense'), '2024-05-05 17:00:00', 1, 0, 750, 2),

-- ------------------------------------------
-- GRUPO A6
-- ------------------------------------------
(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Laranjão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Vinícius Gomes do Amaral'), 
    (SELECT id_time FROM times WHERE nome = 'Nova Iguaçu'), 
    (SELECT id_time FROM times WHERE nome = 'Serra'), '2024-05-04 16:00:00', 4, 0, 1250, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Ipatingão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Gustavo Holanda Souza'), 
    (SELECT id_time FROM times WHERE nome = 'Ipatinga'), 
    (SELECT id_time FROM times WHERE nome = 'Itabuna'), '2024-05-04 17:00:00', 2, 3, 900, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio José Olímpio da Rocha'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Murilo Ugolini Pelegrini'), 
    (SELECT id_time FROM times WHERE nome = 'Real Noroeste'), 
    (SELECT id_time FROM times WHERE nome = 'Portuguesa-RJ'), '2024-05-04 15:30:00', 1, 1, 500, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Moça Bonita'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Leonardo Sígari Zanon'), 
    (SELECT id_time FROM times WHERE nome = 'Audax Rio'), 
    (SELECT id_time FROM times WHERE nome = 'Democrata-SL'), '2024-05-04 15:30:00', 1, 1, 400, 2),

-- ------------------------------------------
-- GRUPO A7
-- ------------------------------------------
(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Distrital do Inamar'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Gabriel Henrique Meira Bispo'), 
    (SELECT id_time FROM times WHERE nome = 'Água Santa'), 
    (SELECT id_time FROM times WHERE nome = 'Maringá'), '2024-05-04 18:00:00', 2, 1, 1600, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Laertão'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Augusto Domingos Borges Ortega'), 
    (SELECT id_time FROM times WHERE nome = 'Costa Rica'), 
    (SELECT id_time FROM times WHERE nome = 'Pouso Alegre'), '2024-05-05 16:00:00', 0, 3, 600, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Pedro Alves do Nascimento'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Halbert Luis Moraes Baia'), 
    (SELECT id_time FROM times WHERE nome = 'Patrocinense'), 
    (SELECT id_time FROM times WHERE nome = 'Santo André'), '2024-05-05 16:00:00', 0, 2, 550, 2),

(1, 
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Martins Pereira'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'William Machado Steffen'), 
    (SELECT id_time FROM times WHERE nome = 'São José-SP'), 
    (SELECT id_time FROM times WHERE nome = 'Inter de Limeira'), '2024-05-04 18:00:00', 0, 0, 1100, 2),

-- ------------------------------------------
-- GRUPO A8 (Jogos remanejados do RS incluídos)
-- ------------------------------------------
(1,
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Bento Freitas'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Jonathan Benkenstein Pinheiro'), 
    (SELECT id_time FROM times WHERE nome = 'Brasil de Pelotas'), 
    (SELECT id_time FROM times WHERE nome = 'FC Cascavel'), '2024-06-09 16:00:00', 1, 0, 3100, 2),

(1,
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio Aníbal Costa'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Tiago Augusto Kappes Diel'), 
    (SELECT id_time FROM times WHERE nome = 'Hercílio Luz'), 
    (SELECT id_time FROM times WHERE nome = 'Avenida'), '2024-06-19 19:30:00', 2, 1, 850, 2),

(1,
    (SELECT id_estadio FROM estadios WHERE nome = 'Estádio do Vale'), 
    (SELECT id_juiz FROM juizes WHERE nome = 'Renan Novaes Insabralde'), 
    (SELECT id_time FROM times WHERE nome = 'Novo Hamburgo'), 
    (SELECT id_time FROM times WHERE nome = 'Cianorte'), '2024-06-12 20:00:00', 1, 1, 400, 2),
(1,
(SELECT id_estadio FROM estadios WHERE nome = 'Estádio Domingos Machado de Lima'), 
(SELECT id_juiz FROM juizes WHERE nome = 'João Vitor Gobi'), 
(SELECT id_time FROM times WHERE nome = 'Concórdia'), 
(SELECT id_time FROM times WHERE nome = 'Barra-SC'), '2024-05-05 17:00:00', 1, 0, 700, 2);
