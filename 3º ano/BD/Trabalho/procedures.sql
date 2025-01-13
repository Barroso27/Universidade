-- Procedure para obter o ranking de medalhas por país
DELIMITER //
CREATE PROCEDURE MedalhasPorPais()
BEGIN
    SELECT 
        p.Nome as Pais,
        SUM(CASE WHEN r.Posição = 1 THEN 1 ELSE 0 END) as Ouro,
        SUM(CASE WHEN r.Posição = 2 THEN 1 ELSE 0 END) as Prata,
        SUM(CASE WHEN r.Posição = 3 THEN 1 ELSE 0 END) as Bronze,
        COUNT(r.Posição) as Total_Medalhas
    FROM Pais AS p
    INNER JOIN Equipa AS e ON p.Identificador = e.Identificador_Pais
    INNER JOIN Resultados AS r ON e.Identificador = r.Identificador_Equipa
    WHERE r.Posição <= 3
    GROUP BY p.Nome
    ORDER BY Ouro DESC, Prata DESC, Bronze DESC;
END //
DELIMITER ; 

-- Procedure para obter o calendário de provas por modalidade
DELIMITER //
CREATE PROCEDURE CalendarioModalidade(IN modalidade_nome VARCHAR(32))
BEGIN
    SELECT 
        p.Data,
        m.Nome as Modalidade,
        c.Nome as Categoria,
        c.Genero,
        p.Fase,
        e.Morada,
        e.Localidade
    FROM Prova p
    INNER JOIN Categoria AS c ON p.Identificador_Categoria = c.Identificador
    INNER JOIN Modalidade AS m ON c.Identificador_Modalidade = m.Identificador
    INNER JOIN Endereço AS e ON p.Identificador_Endereço = e.Identificador
    WHERE m.Nome = modalidade_nome
    ORDER BY p.Data, p.Fase;
END //
DELIMITER ;