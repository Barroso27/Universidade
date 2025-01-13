-- Inserir Jogos Olímpicos
INSERT INTO Jogos_Olimpicos (Ano, Pais_Organizador, Contacto, Data_Inicio, Data_Fim) 
VALUES ('2024', 'França', 'paris2024@olympics.org', '2024-07-26', '2024-08-11');

-- Inserir Países (Expandido para 20 países)
INSERT INTO Pais (Nome, Contacto) VALUES
('Portugal', 'portugal@olympics.org'),
('França', 'france@olympics.org'),
('Brasil', 'brasil@olympics.org'),
('Estados Unidos', 'usa@olympics.org'),
('China', 'china@olympics.org'),
('Japão', 'japan@olympics.org'),
('Alemanha', 'germany@olympics.org'),
('Reino Unido', 'uk@olympics.org'),
('Austrália', 'australia@olympics.org'),
('Canadá', 'canada@olympics.org'),
('Espanha', 'spain@olympics.org'),
('Itália', 'italy@olympics.org'),
('Rússia', 'russia@olympics.org'),
('Holanda', 'netherlands@olympics.org'),
('Suécia', 'sweden@olympics.org'),
('África do Sul', 'southafrica@olympics.org'),
('Nova Zelândia', 'newzealand@olympics.org'),
('México', 'mexico@olympics.org'),
('Coreia do Sul', 'southkorea@olympics.org'),
('Índia', 'india@olympics.org');

-- Inserir Participação
INSERT INTO Participação (Identificador_JogosOlimpicos, Identificador_Pais)
SELECT 1, Identificador FROM Pais;

-- Inserir Modalidades (Expandido para 15 modalidades)
INSERT INTO Modalidade (Nome) VALUES
('Atletismo'),
('Natação'),
('Ginástica'),
('Judo'),
('Basquetebol'),
('Voleibol'),
('Ténis'),
('Ciclismo'),
('Futebol'),
('Boxe'),
('Taekwondo'),
('Esgrima'),
('Tiro com Arco'),
('Triatlo'),
('Polo Aquático');

-- Inserir Categorias (Expandido para 30 categorias)
INSERT INTO Categoria (Nome, Genero, Peso, Duração, Distância, Identificador_Modalidade) VALUES
('100m', 'Masculino', NULL, '00:00:10', 100, 1),
('100m', 'Feminino', NULL, '00:00:11', 100, 1),
('200m', 'Masculino', NULL, '00:00:20', 200, 1),
('200m', 'Feminino', NULL, '00:00:22', 200, 1),
('Maratona', 'Masculino', NULL, '02:10:00', 42195, 1),
('Maratona', 'Feminino', NULL, '02:25:00', 42195, 1),
('100m Livres', 'Masculino', NULL, '00:00:48', 100, 2),
('100m Livres', 'Feminino', NULL, '00:00:53', 100, 2),
('200m Livres', 'Masculino', NULL, '00:01:45', 200, 2),
('200m Livres', 'Feminino', NULL, '00:01:55', 200, 2),
('Solo', 'Feminino', NULL, '00:02:30', NULL, 3),
('Equipa', 'Feminino', NULL, '00:05:00', NULL, 3),
('-60kg', 'Feminino', 60, NULL, NULL, 4),
('-73kg', 'Masculino', 73, NULL, NULL, 4),
('-48kg', 'Feminino', 48, NULL, NULL, 4),
('-57kg', 'Feminino', 57, NULL, NULL, 4),
('Equipa', 'Masculino', NULL, '00:40:00', NULL, 5),
('Equipa', 'Feminino', NULL, '00:40:00', NULL, 5),
('Equipa', 'Masculino', NULL, '00:40:00', NULL, 6),
('Equipa', 'Feminino', NULL, '00:40:00', NULL, 6),
('Singles', 'Masculino', NULL, '03:00:00', NULL, 7),
('Singles', 'Feminino', NULL, '03:00:00', NULL, 7),
('Estrada', 'Masculino', NULL, '06:00:00', 234, 8),
('Estrada', 'Feminino', NULL, '04:00:00', 156, 8),
('Equipa', 'Masculino', NULL, '01:30:00', NULL, 9),
('Equipa', 'Feminino', NULL, '01:30:00', NULL, 9),
('-58kg', 'Masculino', 58, NULL, NULL, 11),
('Florete', 'Masculino', NULL, NULL, NULL, 12),
('Individual', 'Feminino', NULL, NULL, NULL, 13),
('Elite', 'Masculino', NULL, '01:45:00', NULL, 14);

-- Inserir Endereços (Expandido)
INSERT INTO Endereço (Morada, Localidade) VALUES
('Stade de France', 'Saint-Denis'),
('Piscine Olympics', 'Paris'),
('Arena Bercy', 'Paris'),
('Centre Olympique', 'Paris'),
('Velodrome National', 'Saint-Quentin-en-Yvelines'),
('Parc des Princes', 'Paris'),
('Roland Garros', 'Paris'),
('Grand Palais', 'Paris'),
('La Defense Arena', 'Nanterre'),
('Stade Jean-Bouin', 'Paris');








-- Inserir Atletas (Expandido para 50 atletas)
INSERT INTO Atleta (Nome, Data_Nascimento, Género, Peso, Altura) VALUES
('João Silva', '1998-05-15', 'Masculino', 75.5, 1.80), -- Portugal 1
('Maria Santos', '1999-03-22', 'Feminino', 62.0, 1.70), -- Portugal 2
('Pedro Costa', '1997-08-10', 'Masculino', 68.0, 1.75), -- Portugal  3
('Ana Oliveira', '2000-01-30', 'Feminino', 48.0, 1.65), -- França 4
('Michael Johnson', '1996-11-20', 'Masculino', 82.0, 1.88), -- França 5
('Sarah Wilson', '1998-07-12', 'Feminino', 48.0, 1.62), -- França 6
('Liu Wei', '1999-09-05', 'Masculino', 60.0, 1.78), -- Coreia do Sul 7
('Yuki Tanaka', '1997-04-18', 'Feminino', 56.0, 1.63), -- Coreia do Sul 8
('Zao Sheng', '1996-12-28', 'Masculino', 58.0, 1.85), -- Coreia do Sul 9
('Emma Brown', '2000-02-14', 'Feminino', 60.0, 1.68), -- Portugal 10
('Carla Rodriguez', '1999-06-25', 'Masculino', 72.5, 1.82), -- Portugal 11
('Sofia Garcia', '1998-08-17', 'Feminino', 63.5, 1.71), -- Portugal 12 
('André Martin', '1997-03-30', 'Masculino', 80.0, 1.90), -- França 13
('Elena Popov', '2000-04-12', 'Feminino', 48.0, 1.67), -- França 14
('James Wilson', '1996-09-08', 'Masculino', 85.5, 1.93), -- França 15
('Nina Schmidt', '1999-11-03', 'Feminino', 61.5, 1.69), -- India 16
('Marco Rossi', '1998-01-20', 'Masculino', 73.0, 1.81), -- India 17
('Lucia Ferrari', '1997-07-15', 'Feminino', 57.5, 1.64), -- India 18
('David Kim', '2000-05-28', 'Masculino', 67.0, 1.76), -- Estado Unidos 19
('Anna Kowalski', '1996-10-11', 'Feminino', 64.5, 1.73), -- Estado Unidos 20
('Thomas Anderson', '1998-12-05', 'Masculino', 76.0, 1.83), -- Estado Unidos 21
('Laura Martinez', '1997-02-22', 'Feminino', 58.0, 1.66), -- China 22
('Ali Hassan', '1999-08-14', 'Masculino', 71.5, 1.79), -- China 23
('Marie Dubois', '2000-03-09', 'Feminino', 62.5, 1.70), -- China 24
('Alex Thompson', '1996-07-31', 'Masculino', 83.0, 1.89), -- Japão 25
('Carla Santos', '1998-04-26', 'Feminino', 60.5, 1.68), -- Japão 26
('Felipe Silva', '1997-09-19', 'Masculino', 74.0, 1.82), -- Japão 27
('Diana Chen', '1999-01-07', 'Feminino', 55.5, 1.62), -- Canada 28
('Viktor Petrov', '2000-06-29', 'Masculino', 79.5, 1.86), -- Canada 29
('Isabel Costa', '1996-08-23', 'Feminino', 63.0, 1.71), -- Canada 30
('Ricardo Torres', '1998-10-16', 'Masculino', 77.5, 1.84), -- Espanha 31
('Sophie Martin', '1997-05-02', 'Feminino', 59.5, 1.67), -- Espanha 32
('Kevin Lee', '1999-12-25', 'Masculino', 69.5, 1.77), -- Espanha 33
('Maria Gonzalez', '2000-07-18', 'Feminino', 61.0, 1.69), -- Italia 34
('Paul White', '1996-04-14', 'Masculino', 81.5, 1.87), -- Italia 35
('Julia Wagner', '1998-02-09', 'Feminino', 64.0, 1.72), -- Italia 36
('Antonio Ferrari', '1997-11-30', 'Masculino', 75.0, 1.83), -- Russia 37
('Eva Nilsson', '1999-03-15', 'Feminino', 58.5, 1.66), -- Russia 38
('Mohammed Ahmed', '2000-08-07', 'Masculino', 72.0, 1.80), -- Russia 39
('Natalie Brown', '1996-06-21', 'Feminino', 62.0, 1.70), -- Holanda 40
('Lucas Silva', '1998-09-13', 'Masculino', 78.5, 1.85), -- Holanda 41
('Emma Wilson', '1997-01-28', 'Feminino', 57.0, 1.65), -- Holanda 42
('Daniel Kim', '1999-07-04', 'Masculino', 70.5, 1.78), -- Suécia 43
('Sara Garcia', '2000-12-17', 'Feminino', 61.5, 1.69), -- Suécia 44
('Marco Rossi', '1996-03-10', 'Masculino', 76.5, 1.84), -- Suécia 45
('Ana Paula', '1998-05-24', 'Feminino', 59.0, 1.67), -- Africa do Sul 46
('John Smith', '1997-10-09', 'Masculino', 82.5, 1.88), -- Africa do Sul 47
('Marie Claire', '1999-02-01', 'Feminino', 63.5, 1.71), -- Africa do Sul 48
('Zhang Wei', '2000-09-26', 'Masculino', 71.0, 1.79), -- Nova Zelandia 49
('Lisa Taylor', '1996-05-19', 'Feminino', 60.0, 1.68), -- Nova Zelandia 50
('Stick Stickes', '2000-12-01', 'Masculino', 69.0, 1.70), -- Nova Zelandia 51
('Tecatito', '1988-02-02', 'Masculino', 60.0, 1.67), -- México 52
('Paulo', '1990-03-08', 'Masculino', 70.5, 1.80), -- México 53
('Checo Perez', '1986-10-13', 'Masculino',  68.0, 1.76), -- México 54
('Paula', '1983-11-11', 'Feminino', 48.0, 1.50), -- Brazil 55
('Rafaela', '1987-10-12', 'Feminino', 47.0, 1.53), -- Brazil 56
('Manuela', '1986-9-13', 'Feminino', 45.0, 1.49), -- Brazil 57
('Fernanda', '1986-9-13', 'Feminino', 48.0, 1.57), -- Alemanha 58
('Gutmam', '1986-9-13', 'Feminino', 44.0, 1.48), -- Alemanha 59
('Heils', '1986-9-13', 'Feminino', 47.0, 1.52), -- Alemanha 60
('John', '1988-07-13', 'Masculino', 77.7, 1.82), -- Reino Unido 61
('Johnson', '1994-09-25', 'Masculino', 80.9, 1.81), -- Reino Unido 62
('Maguire', '1992-10-30', 'Masculino', 82.1, 1.84), -- Reino Unido 63
('Hudson', '1991-02-24', 'Masculino', 83.7, 1.86), -- Australia 64
('Trycki', '1987-05-16', 'Masculino', 80.5, 1.80), -- Australia 65
('McQueen', '1999-09-14', 'Masculino', 75.5, 1.79); -- Australia 66


-- Inserir Provas (Expandido)
INSERT INTO Prova (Data, Fase, Identificador_Categoria, Identificador_Endereço) VALUES
-- Atletismo
('2024-07-27', 'Eliminatória', 1, 1),    -- 100m Masculino
('2024-07-28', 'Semi-Final', 1, 1),       -- 100m Masculino
('2024-07-28', 'Final', 1, 1),           -- 100m Masculino
('2024-07-29', 'Eliminatória', 2, 1),    -- 100m Feminino
('2024-07-29', 'Semi-Final', 2, 1),       -- 100m Feminino
('2024-07-30', 'Final', 2, 1),           -- 100m Feminino
('2024-07-31', 'Eliminatória', 3, 1),    -- 200m Masculino
('2024-07-31', 'Final', 3, 1),           -- 200m Masculino
('2024-08-01', 'Eliminatória', 4, 1),    -- 200m Feminino
('2024-08-01', 'Final', 4, 1),          -- 200m Feminino
('2024-08-02', 'Final', 5, 1),          -- Maratona Masculino
('2024-08-03', 'Final', 6, 1),          -- Maratona Feminino

-- Natação
('2024-08-04', 'Eliminatória', 7, 2),    -- 100m Livres Masculino
('2024-08-04', 'Semi-Final', 7, 2),      -- 100m Livres Masculino
('2024-08-05', 'Final', 7, 2),           -- 100m Livres Masculino
('2024-08-05', 'Eliminatória', 8, 2),    -- 100m Livres Feminino
('2024-08-05', 'Semi-Final', 8, 2),      -- 100m Livres Feminino
('2024-08-06', 'Final', 8, 2),           -- 100m Livres Feminino
('2024-08-06', 'Eliminatória', 9, 2),    -- 200m Livres Masculino
('2024-08-07', 'Final', 9, 2),           -- 200m Livres Masculino

-- Ginástica
('2024-08-07', 'Qualificação', 11, 3),   -- Solo Feminino
('2024-08-08', 'Final', 11, 3),          -- Solo Feminino
('2024-08-08', 'Qualificação', 12, 3),   -- Equipe Feminino
('2024-08-09', 'Final', 12, 3),          -- Equipe Feminino

-- Judô
('2024-08-09', 'Eliminatória', 13, 4),   -- -60kg Masculino
('2024-08-09', 'Final', 13, 4),          -- -60kg Masculino
('2024-08-10', 'Eliminatória', 14, 4),   -- -73kg Masculino
('2024-08-10', 'Final', 14, 4),          -- -73kg Masculino
('2024-08-11', 'Eliminatória', 15, 4),   -- -48kg Feminino
('2024-08-11', 'Final', 15, 4);          -- -48kg Feminino

-- Inserir Equipas (30 equipas)
INSERT INTO Equipa (Identificador_Pais, Identificador_Categoria) VALUES
-- Atletismo
(1, 1), (2, 1), (19, 1),  -- 100m Masculino - POR, FRA, BRA -- 3
(1, 2), (2, 2), (20, 2),  -- 100m Feminino -- 6
(4, 3), (5, 3), (6, 3),  -- 200m Masculino - USA, CHN, JPN -- 9
(10, 4), (11, 4), (12, 4),  -- 200m Feminino -- 12
(13, 5), (14, 5), (15, 5),  -- Maratona Masculino - GER, GBR, AUS -- 15

-- Natação
(10, 7), (11, 7), (12, 7),  -- 100m Livres Feminino - CAN, ESP, ITA -- 18
(19, 8), (20, 8), (12, 8),  -- 100m Livres Masculino  21
(13, 9), (14, 9), (15, 9),  -- 200m Livres Masculino - RUS, NED, SWE  24

-- Ginástica
(16, 11), (17, 11), (18, 11),  -- Solo Feminino - ZAF, NZL, MEX 27
(16, 12), (17, 12), (18, 12),  -- Equipe Feminino 30

-- Judô
(19, 13), (20, 13), (1, 13),  -- -60kg Masculino - KOR, IND, POR 33
(19, 14), (20, 14), (1, 14),  -- -73kg Masculino 36 
(2, 15), (3, 15), (7, 15),    -- -48kg Feminino - FRA, BRA, USA 39

-- Atletismo
(8, 5), (9, 5); -- Maratona Masculino




-- Inserir Equipa_Atleta (90 relações - 3 atletas por equipa)
INSERT INTO Equipa_Atleta (Identificador_Equipa, Identificador_Atleta) VALUES
-- Atletismo 100m Masculino TEM DE TER 39 
(1, 1), (1, 2), (1, 3),     -- Portugal 
(2, 4), (2, 5), (2, 6),     -- França 
(3, 7), (3, 8), (3, 9),     -- Coreia do Sul

-- Atletismo 100m Feminino
(4, 10), (4, 11), (4, 12),  -- Portugal 
(5, 13), (5, 14), (5, 15),  -- França 
(6, 16), (6, 17), (6, 18),  -- India 

-- Atletismo 200m Masculino
(7, 19), (7, 20), (7, 21),  -- EUA 
(8, 22), (8, 23), (8, 24),  -- China 
(9, 25), (9, 26), (9, 27),  -- Japão 

-- Atletismo 200m Feminino
(10, 28), (10, 29), (10, 30),  -- Canadá 
(11, 31), (11, 32), (11, 33),  -- Espanha 
(12, 34), (12, 35), (12, 36),  -- Itália 

-- Maratona Masculino
(13, 37), (13, 38), (13, 39),  -- Rússia 
(14, 40), (14, 41), (14, 42),  -- Holanda 
(15, 43), (15, 44), (15, 45),  -- Suécia 

-- Natação 100m Feminino
(16, 28), (16, 29), (16, 30),  -- Canada 
(17, 31), (17, 32), (17, 33),   -- Espanha
(18, 34), (18, 35), (18, 36),     -- Italia

-- Natação 100m Masculino
(19, 7), (19, 8), (19, 9), --  Coreia do Sul
(20, 16), (20, 17), (20, 18), --  India
(21, 34), (21, 35), (21, 36), -- Italia

-- Natação 200m Masculino
(22, 37), (22,38), (22,39),  -- Russia
(23, 40), (23, 41), (23, 42),  -- Holanda
(24, 43), (24, 44), (24, 45),  -- Suécia

-- Ginástica Solo Feminino
(25, 46), (25, 47), (25, 48), -- Africa do Sul
(26, 49), (26, 50), (26, 51), --  Nova Zelandia 
(27, 52), (27, 53), (27, 54), -- Mexico

-- Ginastica Equipa Feminino
(28, 46), (28, 47), (28, 48), -- Africa do Sul
(29, 49), (29, 50), (29, 51), --  Nova Zelandia
(30, 52), (30,53), (30,54), -- Mexico

-- Judo -60kg Masculino
(31, 7), (31, 8), (31, 9), -- Coreia do Sul
(32, 16), (32, 17), (32, 18), --  India
(33, 1), (33, 2), (33, 3), --  Portugal

-- Judo -73kg Masculino
(34, 7), (34, 8), (34, 9), -- Coreia do Sul
(35, 16), (35, 17), (35, 18), --  India 
(36, 1), (36, 2), (36, 3), -- Portugal

-- Judo -48kg Feminino
(37, 4), (37, 6), (37, 14), -- França
(38, 55), (38, 56), (38, 57), --  Brazil
(39, 58), (39, 59), (39, 60), -- Alemanha

-- Atletismo Maratona Masculino
(40, 61), (40, 62), (40, 63),  -- Reido Unido
(41, 64), (41, 65), (41, 66);  -- Australia


-- Inserir Resultados (Expandido)
INSERT INTO Resultados (Identificador_Equipa, Identificador_Prova, Posição) VALUES
-- 100m Masculino
(1, 1, 1),  -- Portugal vence eliminatória  
(2, 1, 2),  -- França em segundo na eliminatória 
(3, 1, 3),  -- Brasil em terceiro na eliminatória
(1, 2, 1),  -- Portugal vence semi-final
(2, 2, 2),  -- França em segundo na semi-final
(1, 3, 1),  -- Portugal vence final
(2, 3, 2),  -- França em segundo na final
(3, 3, 3),  -- Brasil em terceiro na final

-- 100m Feminino
(4, 4, 1),  -- EUA vence eliminatória
(5, 4, 2),  -- China em segundo na eliminatória
(4, 5, 1),  -- EUA vence semi-final
(5, 5, 2),  -- China em segundo na semi-final
(4, 6, 1),  -- EUA vence final
(5, 6, 2),  -- China em segundo na final
(6, 6, 3),  -- Japão em terceiro na final

-- 200m Masculino
(7, 7, 1),  -- Alemanha vence eliminatória
(8, 7, 2),  -- Reino Unido em segundo na eliminatória
(7, 8, 1),  -- Alemanha vence final
(8, 8, 2),  -- Reino Unido em segundo na final
(9, 8, 3),  -- Austrália em terceiro na final

-- Natação 100m Livres
(10, 13, 1), -- Canadá vence eliminatória
(1, 13, 2),  -- Portugal em segundo na eliminatória
(10, 14, 1), -- Canadá vence semi-final
(1, 14, 2),  -- Portugal em segundo na semi-final
(10, 15, 1), -- Canadá vence final
(1, 15, 2),  -- Portugal em segundo na final
(2, 15, 3),  -- França em terceiro na final

-- Ginástica Solo
(3, 21, 1),  -- Brasil vence qualificação
(4, 21, 2),  -- EUA em segundo na qualificação
(3, 22, 1),  -- Brasil vence final
(4, 22, 2),  -- EUA em segundo na final
(5, 22, 3),  -- China em terceiro na final

-- Judô -60kg
(6, 25, 1),  -- Japão vence eliminatória
(7, 25, 2),  -- Alemanha em segundo na eliminatória
(6, 26, 1),  -- Japão vence final
(7, 26, 2),  -- Alemanha em segundo na final
(8, 26, 3);  -- Reino Unido em terceiro na final


-- Adicionar participações extras para equipes que competiram mas não medalharam
INSERT INTO Equipa_Prova (Identificador_Equipa, Identificador_Prova) VALUES
(9, 1),  -- Austrália também participou do 100m eliminatórias
(10, 1), -- Canadá também participou do 100m eliminatórias
(9, 4),  -- Austrália também participou do 100m feminino eliminatórias
(10, 4), -- Canadá também participou do 100m feminino eliminatórias
(3, 7),  -- Brasil também participou do 200m eliminatórias
(4, 7),  -- EUA também participou do 200m eliminatórias
(5, 13), -- China também participou do 100m livres eliminatórias
(6, 13), -- Japão também participou do 100m livres eliminatórias
(7, 21), -- Alemanha também participou da ginástica qualificação
(8, 21), -- Reino Unido também participou da ginástica qualificação
(9, 25), -- Austrália também participou do judô eliminatórias
(10, 25); -- Canadá também participou do judô eliminatória