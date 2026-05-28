USE futebol_analytics;

-- ==========================================
-- SIMULAÇÃO DE MERCADO: 14 TRANSFERÊNCIAS INTERNAS DA SÉRIE D
-- CORREÇÃO: Utilizando 'IN' na subquery de times para evitar Error 1242
-- ==========================================
INSERT INTO transferencias (id_jogador, id_time_origem, id_time_destino, valor, data_transferencia) VALUES

-- 1. Felipe Pará (River -> Altos)
((SELECT id_jogador FROM jogadores WHERE nome = 'Felipe Pará' AND id_time IN (SELECT id_time FROM times WHERE nome = 'River') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'River' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Altos' LIMIT 1), 0.00, '2024-07-15'),

-- 2. Didira (ASA -> Treze)
((SELECT id_jogador FROM jogadores WHERE nome = 'Didira' AND id_time IN (SELECT id_time FROM times WHERE nome = 'ASA') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'ASA' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Treze' LIMIT 1), 120000.00, '2024-08-01'),

-- 3. Willyam Maranhão (Manaus -> Manauara)
((SELECT id_jogador FROM jogadores WHERE nome = 'Willyam Maranhão' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Manaus') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Manaus' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Manauara' LIMIT 1), 85000.50, '2024-12-10'),

-- 4. Stefano Pinho (Porto Velho -> Trem)
((SELECT id_jogador FROM jogadores WHERE nome = 'Stefano Pinho' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Porto Velho') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Porto Velho' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Trem' LIMIT 1), 200000.00, '2025-01-05'),

-- 5. Braga (Águia de Marabá -> Moto Club)
((SELECT id_jogador FROM jogadores WHERE nome = 'Braga' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Águia de Marabá') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Águia de Marabá' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Moto Club' LIMIT 1), 45000.00, '2024-09-15'),

-- 6. Aleílson (Trem -> Princesa do Solimões)
((SELECT id_jogador FROM jogadores WHERE nome = 'Aleílson' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Trem') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Trem' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Princesa do Solimões' LIMIT 1), NULL, '2024-11-20'),

-- 7. Axel Lopes (Águia de Marabá -> River)
((SELECT id_jogador FROM jogadores WHERE nome = 'Axel Lopes' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Águia de Marabá') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Águia de Marabá' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'River' LIMIT 1), 90000.00, '2025-01-10'),

-- 8. Leandro Amaro (River -> Altos)
((SELECT id_jogador FROM jogadores WHERE nome = 'Leandro Amaro' AND id_time IN (SELECT id_time FROM times WHERE nome = 'River') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'River' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Altos' LIMIT 1), 0.00, '2024-12-05'),

-- 9. Jhonathan Moc (Manauara -> Manaus)
((SELECT id_jogador FROM jogadores WHERE nome = 'Jhonathan Moc' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Manauara') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Manauara' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Manaus' LIMIT 1), 35000.00, '2024-08-20'),

-- 10. Rafael Roballo (Porto Velho -> Rio Branco)
((SELECT id_jogador FROM jogadores WHERE nome = 'Rafael Roballo' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Porto Velho') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Porto Velho' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Rio Branco' LIMIT 1), 50000.00, '2025-01-12'),

-- 11. Careca (Altos -> Moto Club)
((SELECT id_jogador FROM jogadores WHERE nome = 'Careca' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Altos') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Altos' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Moto Club' LIMIT 1), 110000.00, '2025-02-15'),

-- 12. Mauro Iguatu (Iguatu -> Treze)
((SELECT id_jogador FROM jogadores WHERE nome = 'Mauro Iguatu' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Iguatu') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Iguatu' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Treze' LIMIT 1), 130000.00, '2024-12-28'),

-- 13. Thiago Alagoano (Treze -> ASA)
((SELECT id_jogador FROM jogadores WHERE nome = 'Thiago Alagoano' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Treze') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Treze' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'ASA' LIMIT 1), 180000.00, '2025-03-01'),

-- 14. Bruno Fuso (Sousa -> Iguatu)
((SELECT id_jogador FROM jogadores WHERE nome = 'Bruno Fuso' AND id_time IN (SELECT id_time FROM times WHERE nome = 'Sousa') LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Sousa' LIMIT 1), 
 (SELECT id_time FROM times WHERE nome = 'Iguatu' LIMIT 1), 0.00, '2025-01-20');
