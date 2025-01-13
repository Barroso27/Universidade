-- VIEW listar Países organizadores dos Jogos Olímpicos e anos

CREATE VIEW PaisesOrganizadores AS
SELECT Pais_Organizador, Ano From Jogos_Olimpicos;


-- VIEW listar as edições dos Jogos Olímpicos, incluindo o país organizador, o ano e o período
CREATE VIEW EdiçõesJogosOlimpicos AS
SELECT Pais_Organizador, Ano, Data_Inicio, Data_Fim FROM Jogos_Olimpicos;

-- VIEW listar estatisticas de todos os paises que participaram nos Jogos Olímpicos
CREATE VIEW EstatisticasPaises AS
SELECT 
    p.Nome as Pais,
    COUNT(DISTINCT a.Identificador) as Numero_Atletas,
    COUNT(DISTINCT m.Identificador) as Numero_Modalidades,
    COUNT(DISTINCT c.Identificador) as Numero_Categorias
FROM Pais p
JOIN Equipa e ON p.Identificador = e.Identificador_Pais
JOIN Equipa_Atleta ea ON e.Identificador = ea.Identificador_Equipa
JOIN Atleta a ON ea.Identificador_Atleta = a.Identificador
JOIN Categoria c ON e.Identificador_Categoria = c.Identificador
JOIN Modalidade m ON c.Identificador_Modalidade = m.Identificador
GROUP BY p.Nome
ORDER BY Numero_Atletas DESC;

-- VIEW listar todas as finais, incluindo as 3 primeiras equipas
CREATE VIEW ResultadosFinais AS
SELECT 
    m.Nome as Modalidade,
    c.Nome as Categoria,
    c.Genero,
    p.Data as Data_Final,
    pa.Nome as Pais,
    GROUP_CONCAT(a.Nome ORDER BY a.Nome SEPARATOR ', ') as Atletas,
    r.Posição
FROM Prova p
JOIN Categoria c ON p.Identificador_Categoria = c.Identificador
JOIN Modalidade m ON c.Identificador_Modalidade = m.Identificador
JOIN Resultados r ON p.Identificador = r.Identificador_Prova
JOIN Equipa e ON r.Identificador_Equipa = e.Identificador
JOIN Pais pa ON e.Identificador_Pais = pa.Identificador
JOIN Equipa_Atleta ea ON e.Identificador = ea.Identificador_Equipa
JOIN Atleta a ON ea.Identificador_Atleta = a.Identificador
WHERE p.Fase = 'Final' AND r.Posição <= 3
GROUP BY m.Nome, c.Nome, c.Genero, p.Data, pa.Nome, r.Posição
ORDER BY p.Data, r.Posição;