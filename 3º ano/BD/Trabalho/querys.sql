

-- RE01 Listar nome, género, altura, peso e data de nascimento de todos os atletas ordenados por país e nome
SELECT DISTINCT A.Nome, P.Nome, A.Género, A.Altura, A.Peso, A.Data_Nascimento 
FROM Atleta AS A 
INNER JOIN Equipa_Atleta AS EA ON A.Identificador = EA.Identificador_Atleta 
INNER JOIN Equipa AS E ON EA.Identificador_Equipa = E.Identificador 
INNER JOIN Pais AS P ON E.Identificador_Pais = P.Identificador 
ORDER BY P.Nome, A.Nome ASC;

-- RE02 Listar número total de resultados (top3) associados a um país
SELECT P.Nome, COUNT(R.Posição) FROM Pais AS P INNER JOIN Equipa AS E ON P.Identificador = E.Identificador_Pais INNER JOIN Resultados AS R ON E.Identificador = R.Identificador_Equipa WHERE P.Nome = 'Portugal' AND R.Posição <= 3;

-- RE03 Obter resultados de uma equipa em todas as provas
SELECT M.Nome, C.Nome, P.Fase, P.Data, R.Posição FROM Equipa AS E 
INNER JOIN Resultados AS R ON E.Identificador = R.Identificador_Equipa 
INNER JOIN Prova AS P ON R.Identificador_Prova = P.Identificador 
INNER JOIN Categoria AS C ON P.Identificador_Categoria = C.Identificador 
INNER JOIN Modalidade AS M ON C.Identificador_Modalidade = M.Identificador
INNER JOIN Pais AS PA ON E.Identificador_Pais = PA.Identificador 
WHERE C.Nome = '100m' AND M.Nome = 'Atletismo' AND C.Genero = 'Masculino' AND PA.Nome = 'Portugal';

-- RE04 Listar resultados de diferentes equipas na mesma prova
SELECT PA.Nome, R.Posição FROM Prova AS P 
INNER JOIN Resultados AS R ON P.Identificador = R.Identificador_Prova 
INNER JOIN Equipa AS E ON R.Identificador_Equipa = E.Identificador 
INNER JOIN Pais AS PA ON E.Identificador_Pais = PA.Identificador 
INNER JOIN Categoria AS C ON P.Identificador_Categoria = C.Identificador 
INNER JOIN Modalidade AS M ON C.Identificador_Modalidade = M.Identificador 
WHERE P.Data = '2024-07-27' AND C.Nome = '100m' AND M.Nome = 'Atletismo' AND P.Fase = 'Eliminatória' AND C.Genero = 'Masculino' ORDER BY R.Posição ASC;

-- RE05 Listar provas realizadas numa determinada localidade
SELECT P.Identificador, M.Nome, C.Nome, C.Genero, C.Peso, C.Duração, C.Distância, P.Data, P.Fase, E.Morada, E.Localidade 
FROM Prova AS P INNER JOIN Endereço AS E ON P.Identificador_Endereço = E.Identificador 
INNER JOIN Categoria AS C ON P.Identificador_Categoria = C.Identificador 
INNER JOIN Modalidade as M ON C.Identificador_Modalidade = M.Identificador
WHERE E.Localidade = "Paris";

-- RE06 Listar Países organizadores dos Jogos Olímpicos e anos
SELECT * FROM PaisesOrganizadores;

-- RE07 Listar as edições dos Jogos Olímpicos, incluindo o país organizador, o ano e o período
SELECT * FROM EdiçõesJogosOlimpicos;

-- RE8 Listar atletas que participaram numa modalidade organizados por país
SELECT A.NOME, P.NOME, M.Nome, C.NOME FROM Atleta AS A 
INNER JOIN Equipa_Atleta AS EA ON A.Identificador = EA.Identificador_Atleta 
INNER JOIN Equipa AS E ON EA.Identificador_Equipa = E.Identificador 
INNER JOIN Pais AS P ON E.Identificador_Pais = P.Identificador 
INNER JOIN Categoria AS C ON E.Identificador_Categoria = C.Identificador 
INNER JOIN Modalidade as M ON C.Identificador_Modalidade = M.Identificador 
WHERE M.Nome = "Atletismo" ORDER BY P.NOME;

-- RE09 Listar provas associadas a uma modalidade específica
SELECT * FROM Prova AS P 
INNER JOIN Categoria AS C ON P.Identificador_Categoria = C.Identificador 
INNER JOIN Modalidade AS M ON C.Identificador_Modalidade = M.Identificador 
WHERE M.Nome = "Natação";

-- RE10 Listar resultados de uma prova específica incluindo equipas participantes e classificações
SELECT Pais.Nome, Resultados.Posição FROM Prova 
INNER JOIN Resultados ON Prova.Identificador = Resultados.Identificador_Prova 
INNER JOIN Equipa ON Resultados.Identificador_Equipa = Equipa.Identificador 
INNER JOIN Pais ON Equipa.Identificador_Pais = Pais.Identificador 
INNER JOIN Categoria ON Prova.Identificador_Categoria = Categoria.Identificador 
INNER JOIN Modalidade ON Categoria.Identificador_Modalidade = Modalidade.Identificador 
WHERE Prova.Data = '2024-07-27' AND Categoria.Nome = '100m' AND Modalidade.Nome = 'Atletismo' ORDER BY Resultados.Posição ASC;

-- RE11  Listar melhores resultados de um atleta em todas as provas realizadas
SELECT P.Data, M.Nome, C.Nome, P.Fase, R.Posição FROM Atleta AS A 
INNER JOIN Equipa_Atleta AS EA ON A.Identificador = EA.Identificador_Atleta 
INNER JOIN Equipa AS E ON EA.Identificador_Equipa = E.Identificador 
INNER JOIN Resultados AS R ON E.Identificador = R.Identificador_Equipa 
INNER JOIN Prova AS P ON R.Identificador_Prova = P.Identificador 
INNER JOIN Categoria AS C ON P.Identificador_Categoria = C.Identificador 
INNER JOIN Modalidade AS M ON C.Identificador_Modalidade = M.Identificador 
WHERE R.Posição <= 3 AND A.Nome = 'Pedro Costa';

-- RE12 Listar Atletas de uma determinada equipa
Select A.Nome, P.Nome, M.Nome, C.Nome, C.Genero FROM Atleta AS A 
INNER JOIN Equipa_Atleta AS EA ON A.Identificador = EA.Identificador_Atleta 
INNER JOIN Equipa AS E ON EA.Identificador_Equipa = E.Identificador 
INNER JOIN Pais AS P ON E.Identificador_Pais = P.Identificador 
INNER JOIN Categoria AS C ON E.Identificador_Categoria = C.Identificador 
INNER JOIN Modalidade AS M ON C.Identificador_Modalidade = M.Identificador 
WHERE P.Nome = 'Portugal' AND C.Nome = '100m' AND C.Genero = 'Feminino' AND M.Nome = 'Atletismo';

-- RE13 Listar estatísticas de todos os países que participaram nos Jogos Olímpicos
SELECT * FROM EstatisticasPaises;

-- RE14 Listar todas as finais, incluindo as 3 primeiras equipas
SELECT * FROM ResultadosFinais;


call MedalhasPorPais();

call CalendarioModalidade('Natação');
