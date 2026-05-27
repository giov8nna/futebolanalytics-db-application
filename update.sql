-- UPDATES

-- 1. Atualizar a capacidade e a cidade de um estádio específico
UPDATE estadios 
SET capacidade = 65000, cidade = 'São Paulo' 
WHERE id_estadio = 1;

-- 2. Atualizar o peso e a altura de um jogador após avaliação física
UPDATE jogadores 
SET peso = 78.50, altura = 1.84 
WHERE id_jogador = 42;

-- 3. Corrigir o placar de uma partida finalizada
UPDATE partidas 
SET placar_casa = 3, placar_fora = 2 
WHERE id_partida = 105;

-- 4. Mudar o time atual de um jogador (simulando uma transferência concluída)
UPDATE jogadores 
SET id_time = 5 
WHERE id_jogador = 17;

-- 5. Atualizar a divisão de uma liga específica
UPDATE ligas 
SET divisao = 'Primeira Divisão' 
WHERE id_liga = 2;

-- 6. Alterar o nome e a sigla de um clube de futebol
UPDATE times 
SET nome = 'SÃO RAIMUNDO-RR', sigla = 'SRA' 
WHERE id_time = 8;

-- 7. Altera a cidade do time
UPDATE times
SET cidade = 'Recife'
WHERE id_time = 1;

-- 8. Altera o placar de uma partida
UPDATE partidas
SET placar_casa = 2,
    placar_fora = 1
WHERE id_partida = 1;

-- 9. Altera a nacionalidade
UPDATE jogadores
SET nacionalidade = 'Argentina'
WHERE id_jogador = 3;

-- 10. Prorrogar a data de término de uma temporada específica
UPDATE temporadas 
SET data_fim = '2026-12-15' 
WHERE id_temporada = 3;

