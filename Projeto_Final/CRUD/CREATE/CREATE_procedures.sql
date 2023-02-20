CREATE PROCEDURE SPR_Nota_Media
AS
SELECT		V.Nome_filme,AVG(V.Review_filme) AS Nota_Media
FROM		Visualizaçoes	AS V
GROUP BY	V.Nome_filme

GO

CREATE PROCEDURE SPR_Nota_Media_Maior(@P_Nota DECIMAL(2,1))
AS
SELECT		V.Nome_filme,AVG(V.Review_filme) AS Nota_Media
FROM		Visualizaçoes	AS V
GROUP BY	V.Nome_filme
HAVING		AVG(V.Review_filme) > @P_Nota