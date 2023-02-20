
--A procedure abaixo é um exemplo de modelo para a atualização da notas dos filmes.
create procedure atualizar_nota(@nota DECIMAL(2,1))
AS
update Visualizaçoes
set Review_filme = @nota
where ID_telespectador = 11 and ID_Filme_view = 1

GO

--Podemos atualizar o nome do responsável pela assinatura como o exemplo abaixo  
create procedure atualizar_nome(@nome VARCHAR(60))
AS
update Cliente
set nome_cli = @nome
where ID_cliente = 11

GO

--A procedure abaixo cancela a assinatura do cliente atualizando a data do cancelamento.
create procedure cancelamento(@cancelar DATE)
AS
update Assinatura
set Dt_fim_assinatura = @cancelar
where ID_assinatura = 9

GO


--A procedure abaixo é um exemplo que permite a mudança do plano de assinatura.
create procedure mudançaDePlano(@plano VARCHAR(20))
AS
update Assinatura
set Plano_escolhido = @plano
where ID_assinatura = 9

GO

--A procedure abaixo é um exemplo que permite a mudança da forma de pagamento do plano de assinatura.
create procedure mudançaDePagamento(@pgto VARCHAR(20))
AS
update Assinatura
set Forma_pgto = @pgto
where ID_assinatura = 13
