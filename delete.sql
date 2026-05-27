-- 1. Excluir uma transferência específica do sistema através do seu ID
DELETE FROM transferencias 
WHERE id_transferencia = 45;

-- 2. Remover o registro de um cartão específico na tabela especializada
DELETE FROM cartoes 
WHERE id_evento = 120;

-- 3. Excluir o registro de um gol específico pelo ID do evento
DELETE FROM gols 
WHERE id_evento = 88;

-- 4. Remover um evento específico de uma partida (irá disparar o CASCADE para gols ou cartões)
DELETE FROM eventos 
WHERE id_evento = 204;

-- 5. Excluir uma partida cancelada pelo seu identificador (remove em cascata os eventos vinculados)
DELETE FROM partidas 
WHERE id_partida = 510;

-- 6. Remover um jogador específico do cadastro do sistema
DELETE FROM jogadores 
WHERE id_jogador = 99;

-- 7. Excluir um estádio específico que foi desativado ou cadastrado incorretamente
DELETE FROM estadios 
WHERE id_estadio = 14;

-- 8. Remover um árbitro (juiz) do quadro de funcionários cadastrados
DELETE FROM juizes 
WHERE id_juiz = 7;

-- 9. Excluir um time específico do banco de dados
DELETE FROM times 
WHERE id_time = 32;

-- 10. Remover uma liga esportiva específica pelo seu identificador
DELETE FROM ligas 
WHERE id_liga = 5;