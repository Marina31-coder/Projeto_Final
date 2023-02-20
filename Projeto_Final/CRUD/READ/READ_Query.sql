-- Quantidade de Visualiza��es dos Filmes

create view vw_Qtde_Visualiza�oes AS
select SUM(Cont_views) As 'Quantidade de Visualiza�oes', Nome_filme As 'Nome do Filme'
FROM Visualiza�oes
GROUP BY Nome_filme;

-- Dados do Cliente com a assinatura

create view vw_DadosCliente AS
select * from Cliente 
inner join Assinatura
on Cliente.ID_cliente = Assinatura.ID_cl

-- Sele��o de determinados Filmes assistidos de acordo com a ID do telespectador

create view vw_Filme1 AS
select ID_view, ID_telespectador, Nome_filme AS 'Nome do Filme'
from Visualiza�oes
where Nome_filme = 'O Lado Bom da Vida'

create view vw_Filme2 AS
select ID_view, ID_telespectador, Nome_filme AS 'Nome do Filme'
from Visualiza�oes
where Nome_filme = 'Moulin Rouge - Amor em Vermelho'

create view vw_Filme3 AS
select ID_view, ID_telespectador, Nome_filme AS 'Nome do Filme'
from Visualiza�oes
where Nome_filme = 'Zodiaco'

create view vw_Filme3 AS
select ID_view, ID_telespectador, Nome_filme AS 'Nome do Filme'
from Visualiza�oes
where Nome_filme = 'Zodiaco'

create view vw_Filme4 AS
select ID_view, ID_telespectador, Nome_filme AS 'Nome do Filme'
from Visualiza�oes
where Nome_filme = 'Os Farofeiros'

create view vw_Filme5 AS
select ID_view, ID_telespectador, Nome_filme AS 'Nome do Filme'
from Visualiza�oes
where Nome_filme = 'Sonic 2 - O Filme'





-- 



