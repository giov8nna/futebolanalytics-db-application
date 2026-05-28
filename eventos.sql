USE futebol_analytics;

-- ==========================================
-- JOGADORES DA TABELA DE EVENTOS
-- Carga com dados biométricos reais e estruturados.
-- Onde a informação oficial é incerta, utiliza-se NULL.
-- ==========================================
INSERT IGNORE INTO jogadores (nome, nacionalidade, data_nascimento, altura, peso, perna_dominante, id_posicao, id_time) VALUES

-- 1. Júnior Palmares (José Ederaldo da Silva Júnior) - Meia Ofensivo
('Júnior Palmares', 'Brasileira', '1997-04-14', 1.75, NULL, 'Direita', 6, (SELECT id_time FROM times WHERE nome = 'Manauara')),

-- 2. Neto Oliveira - Atacante / Centroavante
('Neto Oliveira', 'Brasileira', '1998-03-02', 1.83, NULL, 'Ambas', 8, (SELECT id_time FROM times WHERE nome = 'Manauara')),

-- 4. Vitor Hugo (Rio Branco-AC) - Dados não confirmados para evitar erro de homônimo
('Vitor Hugo', 'Brasileira', NULL, NULL, NULL, NULL, NULL, (SELECT id_time FROM times WHERE nome = 'Rio Branco')),

-- 5. Luis Fernando Santos Silva (Manauara) - Dados não confirmados para evitar erro de homônimo
('Luis Fernando Santos Silva', 'Brasileira', NULL, NULL, NULL, NULL, NULL, (SELECT id_time FROM times WHERE nome = 'Manauara'));

USE futebol_analytics;

-- ==========================================
-- CORREÇÃO DE DADOS BIOMÉTRICOS E CADASTRAIS
-- Baseado nos registros oficiais da CBF e oGol (2024)
-- ==========================================

-- Atualizando Luis Fernando
UPDATE jogadores 
SET 
    nome = 'Luis Fernando Santos da Conceição',
    data_nascimento = '1998-01-27',
    altura = 1.83,
    peso = 63.0,
    perna_dominante = 'Direita',
    id_posicao = 6 -- Meio-campo
WHERE nome = 'Luis Fernando Santos Silva' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Manauara');

-- Atualizando Vitor Hugo
UPDATE jogadores 
SET 
    nome = 'Vitor Hugo Gomes Dias',
    data_nascimento = '2006-01-01', -- Data exata não publicada, fixado ano de registro
    id_posicao = 8 -- Atacante
WHERE nome = 'Vitor Hugo' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Rio Branco');


INSERT INTO eventos (id_partida, id_jogador, tipo_evento, minuto) VALUES

-- Gol Manauara: Jhonathan Moc (Aos 38' do 1T)
((SELECT id_partida FROM partidas p 
  JOIN times tm ON p.id_time_mandante = tm.id_time 
  JOIN times tv ON p.id_time_visitante = tv.id_time 
  WHERE tm.nome = 'Manauara' AND tv.nome = 'Rio Branco' LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Jhonathan Moc' LIMIT 1), 'Gol', '38T1'),

-- Gol Manauara: Júnior Palmares (Fim do 1T)
((SELECT id_partida FROM partidas p 
  JOIN times tm ON p.id_time_mandante = tm.id_time 
  JOIN times tv ON p.id_time_visitante = tv.id_time 
  WHERE tm.nome = 'Manauara' AND tv.nome = 'Rio Branco' LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Júnior Palmares' LIMIT 1), 'Gol', '45T1'),

-- Gol Rio Branco: Vitor Hugo (Aos 12' do 2T)
((SELECT id_partida FROM partidas p 
  JOIN times tm ON p.id_time_mandante = tm.id_time 
  JOIN times tv ON p.id_time_visitante = tv.id_time 
  WHERE tm.nome = 'Manauara' AND tv.nome = 'Rio Branco' LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Vitor Hugo' LIMIT 1), 'Gol', '12T2'),

-- Gol Manauara: Neto Oliveira (Acréscimos do 2T)
((SELECT id_partida FROM partidas p 
  JOIN times tm ON p.id_time_mandante = tm.id_time 
  JOIN times tv ON p.id_time_visitante = tv.id_time 
  WHERE tm.nome = 'Manauara' AND tv.nome = 'Rio Branco' LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Neto Oliveira' LIMIT 1), 'Gol', '90+T2');
 


INSERT INTO eventos (id_partida, id_jogador, tipo_evento, minuto) VALUES

-- Cartão Amarelo Manauara: Diego Clemente dos Santos (Aos 17' do 2T)
((SELECT id_partida FROM partidas p 
  JOIN times tm ON p.id_time_mandante = tm.id_time 
  JOIN times tv ON p.id_time_visitante = tv.id_time 
  WHERE tm.nome = 'Manauara' AND tv.nome = 'Rio Branco' LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Diego Clemente' LIMIT 1), 'Cartao Amarelo', '17T2'),

-- Cartão Amarelo Manauara: Luis Fernando Santos Silva (Acréscimos do 2T)
((SELECT id_partida FROM partidas p 
  JOIN times tm ON p.id_time_mandante = tm.id_time 
  JOIN times tv ON p.id_time_visitante = tv.id_time 
  WHERE tm.nome = 'Manauara' AND tv.nome = 'Rio Branco' LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Luis Fernando Santos Silva' LIMIT 1), 'Cartao Amarelo', '90+4T2');
 

 
 
 USE futebol_analytics;

-- ==========================================
-- GARANTIA DE INTEGRIDADE (JOGADORES)
-- Adiciona os autores dos gols, definindo posição base
-- ==========================================
INSERT IGNORE INTO jogadores (nome, nacionalidade, id_posicao, id_time) VALUES
('Gabriel Mury', 'Brasileira', 5, (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões')), -- Volante / Meio-campo
('Vinícius Soares', 'Brasileira', 8, (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões')); -- Atacante

-- ==========================================
-- EVENTOS: RODADA 1 - Princesa do Solimões 2x0 São Raimundo-RR
-- ==========================================
INSERT INTO eventos (id_partida, id_jogador, tipo_evento, minuto) VALUES

-- Gol Princesa do Solimões: Gabriel Mury (Aos 34' do 1T)
((SELECT id_partida FROM partidas 
  WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões') 
  AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'São Raimundo-RR') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Gabriel Mury' LIMIT 1), 'Gol', '34T1'),
 
 

-- Gol Princesa do Solimões: Vinícius Soares (Aos 39' do 2T)
((SELECT id_partida FROM partidas 
  WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões') 
  AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'São Raimundo-RR') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Vinícius Soares' LIMIT 1), 'Gol', '39T2');
 
 

 
 
 USE futebol_analytics;

-- ==========================================
-- JOGADORES: CARTÕES AMARELOS 
-- Dados biométricos como NULL para evitar alucinação de dados.
-- ATENÇÃO: Substitua o time de cada jogador na query abaixo!
-- ==========================================
INSERT IGNORE INTO jogadores (nome, nacionalidade, data_nascimento, altura, peso, id_time) VALUES

('Douglas Nunes Pereira Carvalho de Lima', 'Brasileira', NULL, NULL, NULL, 
 (SELECT id_time FROM times WHERE nome = 'TIME_DO_DOUGLAS')),

('Kennedy Martins Ribeiro Junior', 'Brasileira', NULL, NULL, NULL, 
 (SELECT id_time FROM times WHERE nome = 'TIME_DO_KENNEDY'));
 
 USE futebol_analytics;

-- ==========================================
-- ATUALIZAÇÃO: DADOS BIOMÉTRICOS DOS JOGADORES
-- ==========================================

-- Atualizando os dados de Guigui (Kennedy)
UPDATE jogadores 
SET 
    data_nascimento = '1996-05-01',
    altura = 1.83,
    peso = 80.0,
    id_posicao = 2 -- Zagueiro
WHERE nome = 'Kennedy Martins Ribeiro Junior' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'São Raimundo-RR');

-- Atualizando os dados de Douglas Nunes
UPDATE jogadores 
SET 
    data_nascimento = '1996-01-01', -- Fixado no ano confirmado
    id_posicao = 2 -- Zagueiro
WHERE nome = 'Douglas Nunes Pereira Carvalho de Lima' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões');

-- ==========================================
-- EVENTOS: CARTÕES AMARELOS - Princesa do Solimões x São Raimundo-RR
-- ==========================================
INSERT INTO eventos (id_partida, id_jogador, tipo_evento, minuto) VALUES

-- Cartão Amarelo: Kennedy Martins Ribeiro Junior (Aos 10' do 1T)
((SELECT id_partida FROM partidas 
  WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões') 
  AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'São Raimundo-RR') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Kennedy Martins Ribeiro Junior' LIMIT 1), 'Cartao Amarelo', '10T1'),

-- Cartão Amarelo: Douglas Nunes Pereira Carvalho de Lima (Aos 07' do 2T)
((SELECT id_partida FROM partidas 
  WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões') 
  AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'São Raimundo-RR') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Douglas Nunes Pereira Carvalho de Lima' LIMIT 1), 'Cartao Amarelo', '07T2');
 

 
 
 
 USE futebol_analytics;

-- ==========================================
-- JOGADORES: DADOS CONFIRMADOS E CADASTRO INICIAL
-- Adiciona os atletas dos jogos restantes do Grupo A1
-- ==========================================
INSERT IGNORE INTO jogadores (nome, nacionalidade, data_nascimento, altura, peso, id_posicao, id_time) VALUES

-- Autor do gol do Porto Velho (Dados Biométricos Completos)
('Luan Viana Patrocínio', 'Brasileira', '1996-01-14', 1.84, 79.0, 8, (SELECT id_time FROM times WHERE nome = 'Porto Velho')),

-- Jogadores advertidos no jogo Trem x Manaus
('Mateus', 'Brasileira', NULL, NULL, NULL, NULL, (SELECT id_time FROM times WHERE nome = 'Trem')),
('Emerson Bombado', 'Brasileira', NULL, NULL, NULL, 5, (SELECT id_time FROM times WHERE nome = 'Manaus')),
('Denis Macedo', 'Brasileira', NULL, NULL, NULL, 8, (SELECT id_time FROM times WHERE nome = 'Manaus')),
('Wendel Nery', 'Brasileira', NULL, NULL, NULL, 3, (SELECT id_time FROM times WHERE nome = 'Manaus')),
('Miliano', 'Brasileira', NULL, NULL, NULL, 8, (SELECT id_time FROM times WHERE nome = 'Manaus')),
('Vinicius Leandro', 'Brasileira', NULL, NULL, NULL, NULL, (SELECT id_time FROM times WHERE nome = 'Manaus')),
('Gharib', 'Brasileira', NULL, NULL, NULL, 6, (SELECT id_time FROM times WHERE nome = 'Manaus'));

USE futebol_analytics;

-- ==========================================
-- ATUALIZAÇÃO: DADOS BIOMÉTRICOS E POSIÇÕES TÁTICAS
-- Fechamento do Grupo A1 (Trem x Manaus)
-- ==========================================

-- 1. Atualizando Mateus (Trem-AP) -> Mateus Macapá
UPDATE jogadores 
SET 
    nome = 'Mateus Pereira de Almeida',
    data_nascimento = '2002-05-18',
    id_posicao = 3 -- Lateral (Direito)
WHERE nome = 'Mateus' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Trem');

-- 2. Atualizando Vinicius Leandro (Manaus)
UPDATE jogadores 
SET 
    nome = 'Vinicius Leandro da Silva',
    data_nascimento = '1990-06-18',
    altura = 1.87,
    peso = 81.0,
    perna_dominante = 'Direita',
    id_posicao = 2 -- Zagueiro
WHERE nome = 'Vinicius Leandro' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Manaus');

-- 3. Atualizando Emerson Bombado (Manaus)
UPDATE jogadores 
SET 
    nome = 'Emerson Ribeiro dos Santos',
    data_nascimento = '1999-05-23',
    altura = 1.83,
    id_posicao = 5 -- Volante
WHERE nome = 'Emerson Bombado' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Manaus');

-- 4. Atualizando Wendel Nery (Manaus)
UPDATE jogadores 
SET 
    nome = 'Wendel Nery da Silva',
    data_nascimento = '1998-04-18',
    altura = 1.82,
    id_posicao = 4 -- Lateral (Esquerdo)
WHERE nome = 'Wendel Nery' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Manaus');

-- 5. Atualizando Denis Macedo (Manaus)
UPDATE jogadores 
SET 
    nome = 'Denis Macedo da Costa',
    data_nascimento = '1998-03-08',
    id_posicao = 8 -- Atacante
WHERE nome = 'Denis Macedo' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Manaus');

-- 6. Atualizando Miliano (Manaus)
UPDATE jogadores 
SET 
    nome = 'Miliano Souza da Silva',
    data_nascimento = '1997-01-26',
    altura = 1.68,
    id_posicao = 8 -- Atacante (Ponta Esquerda)
WHERE nome = 'Miliano' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Manaus');

-- 7. Atualizando Gharib (Manaus)
UPDATE jogadores 
SET 
    nome = 'Gharib da Costa Gurgel',
    data_nascimento = '1998-08-27',
    id_posicao = 6 -- Meio-campo
WHERE nome = 'Gharib' 
AND id_time = (SELECT id_time FROM times WHERE nome = 'Manaus');

-- ==========================================
-- EVENTOS: RODADA 1 (Fechamento do Grupo A1)
-- ==========================================
INSERT INTO eventos (id_partida, id_jogador, tipo_evento, minuto) VALUES

-- ------------------------------------------
-- JOGO: Humaitá 0x1 Porto Velho
-- ------------------------------------------
-- Gol Porto Velho: Luan Viana (Aos 27' do 2T)
((SELECT id_partida FROM partidas 
  WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Humaitá') 
  AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Porto Velho') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Luan Viana Patrocínio' LIMIT 1), 'Gol', '27T2');


-- ------------------------------------------
-- JOGO: Trem 0x0 Manaus
-- Minutos mantidos como NULL (informação exata não divulgada na fonte primária)
-- ------------------------------------------

INSERT INTO eventos (id_partida, id_jogador, tipo_evento, minuto) VALUES

-- Cartão Amarelo Trem: Aleilson (Jogador já cadastrado no seu insert original)
((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Aleilson' LIMIT 1), 'Cartao Amarelo', NULL),

-- Cartão Amarelo Trem: Mateus
((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Mateus' LIMIT 1), 'Cartao Amarelo', NULL),

-- Cartões Amarelos Manaus:
((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Emerson Bombado' LIMIT 1), 'Cartao Amarelo', NULL),

((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Denis Macedo' LIMIT 1), 'Cartao Amarelo', NULL),

((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Wendel Nery' LIMIT 1), 'Cartao Amarelo', NULL),

((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Miliano' LIMIT 1), 'Cartao Amarelo', NULL),

((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Vinicius Leandro' LIMIT 1), 'Cartao Amarelo', NULL),

((SELECT id_partida FROM partidas WHERE id_time_mandante = (SELECT id_time FROM times WHERE nome = 'Trem') AND id_time_visitante = (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_jogador FROM jogadores WHERE nome = 'Gharib' LIMIT 1), 'Cartao Amarelo', NULL);
 


INSERT INTO gols (id_evento, tipo_gol)
SELECT id_evento, 'Normal'
FROM eventos
WHERE tipo_evento = 'Gol';

INSERT INTO cartoes (id_evento, tipo_cartao)
SELECT id_evento, CASE WHEN tipo_evento = 'Cartao Amarelo' THEN 'Amarelo' ELSE 'Vermelho' END
FROM eventos
WHERE tipo_evento IN ('Cartao Amarelo', 'Cartao Vermelho');
