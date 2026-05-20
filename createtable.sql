DROP DATABASE IF EXISTS futebol_analytics;
CREATE DATABASE futebol_analytics;
USE futebol_analytics;

CREATE TABLE ligas (
    id_liga INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    pais VARCHAR(80) NOT NULL,
    divisao VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE temporadas (
    id_temporada INT AUTO_INCREMENT PRIMARY KEY,
    id_liga INT NOT NULL,
    ano YEAR NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,

    CONSTRAINT fk_temporadas_ligas
    FOREIGN KEY (id_liga)
    REFERENCES ligas(id_liga)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE times (
    id_time INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sigla VARCHAR(10),
    cidade VARCHAR(80),
    estado VARCHAR(80),
    data_fundacao DATE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE juizes (
    id_juiz INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(80),
    data_nascimento DATE
) ENGINE=InnoDB;

CREATE TABLE estadios (
    id_estadio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    capacidade INT,
    cidade VARCHAR(80)
) ENGINE=InnoDB;

CREATE TABLE posicoes (
    id_posicao INT AUTO_INCREMENT PRIMARY KEY,
    nome_posicao VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE jogadores (
    id_jogador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(80),
    data_nascimento DATE,
    altura DECIMAL(4,2),
    peso DECIMAL(5,2),

    perna_dominante ENUM(
        'Direita',
        'Esquerda',
        'Ambas'
    ),

    id_posicao INT NOT NULL,
    id_time INT,

    CONSTRAINT fk_jogadores_posicoes
    FOREIGN KEY (id_posicao)
    REFERENCES posicoes(id_posicao)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    CONSTRAINT fk_jogadores_times
    FOREIGN KEY (id_time)
    REFERENCES times(id_time)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE partidas (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,

    id_temporada INT NOT NULL,
    id_estadio INT NOT NULL,
    id_juiz INT NOT NULL,

    id_time_mandante INT NOT NULL,
    id_time_visitante INT NOT NULL,

    data_partida DATETIME NOT NULL,

    rodada INT,
    publico INT UNSIGNED,

    placar_casa TINYINT UNSIGNED DEFAULT 0,
    placar_fora TINYINT UNSIGNED DEFAULT 0,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_partidas_temporadas
    FOREIGN KEY (id_temporada)
    REFERENCES temporadas(id_temporada)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    CONSTRAINT fk_partidas_estadios
    FOREIGN KEY (id_estadio)
    REFERENCES estadios(id_estadio)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    CONSTRAINT fk_partidas_juizes
    FOREIGN KEY (id_juiz)
    REFERENCES juizes(id_juiz)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    CONSTRAINT fk_partidas_mandante
    FOREIGN KEY (id_time_mandante)
    REFERENCES times(id_time)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    CONSTRAINT fk_partidas_visitante
    FOREIGN KEY (id_time_visitante)
    REFERENCES times(id_time)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

) ENGINE=InnoDB;

CREATE TABLE eventos (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,

    id_partida INT NOT NULL,
    id_jogador INT,

    minuto TINYINT UNSIGNED NOT NULL,

    tipo_evento ENUM(
        'Gol',
        'Cartao',
        'Substituicao',
        'Falta'
    ) NOT NULL,

    descricao VARCHAR(255),

    CONSTRAINT fk_eventos_partidas
    FOREIGN KEY (id_partida)
    REFERENCES partidas(id_partida)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    CONSTRAINT fk_eventos_jogadores
    FOREIGN KEY (id_jogador)
    REFERENCES jogadores(id_jogador)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE gols (
    id_evento INT PRIMARY KEY,

    tipo_gol ENUM(
        'Normal',
        'Penalti',
        'Falta',
        'Contra'
    ) NOT NULL,

    CONSTRAINT fk_gols_eventos
    FOREIGN KEY (id_evento)
    REFERENCES eventos(id_evento)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE cartoes (
    id_evento INT PRIMARY KEY,

    tipo_cartao ENUM(
        'Amarelo',
        'Vermelho'
    ) NOT NULL,

    CONSTRAINT fk_cartoes_eventos
    FOREIGN KEY (id_evento)
    REFERENCES eventos(id_evento)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE transferencias (
    id_transferencia INT AUTO_INCREMENT PRIMARY KEY,

    id_jogador INT NOT NULL,
    id_time_origem INT,
    id_time_destino INT NOT NULL,

    valor DECIMAL(15,2),

    data_transferencia DATE NOT NULL,

    CONSTRAINT fk_transferencias_jogador
    FOREIGN KEY (id_jogador)
    REFERENCES jogadores(id_jogador)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    CONSTRAINT fk_transferencias_origem
    FOREIGN KEY (id_time_origem)
    REFERENCES times(id_time)
    ON DELETE SET NULL
    ON UPDATE CASCADE,

    CONSTRAINT fk_transferencias_destino
    FOREIGN KEY (id_time_destino)
    REFERENCES times(id_time)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB;




UPDATE times
SET cidade = 'Recife'
WHERE id_time = 1;

UPDATE partidas
SET placar_casa = 2,
    placar_fora = 1
WHERE id_partida = 1;

UPDATE jogadores
SET nacionalidade = 'Argentina'
WHERE id_jogador = 3;

UPDATE classificacao
SET pontos = 25
WHERE id_temporada = 1
AND id_time = 2;


