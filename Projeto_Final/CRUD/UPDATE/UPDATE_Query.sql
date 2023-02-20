
--A procedure abaixo � um exemplo de modelo para a atualiza��o da notas dos filmes.
create procedure atualizar_nota(@nota DECIMAL(2,1))
AS
update Visualiza�oes
set Review_filme = @nota
where ID_telespectador = 11 and ID_Filme_view = 1

GO

--Podemos atualizar o nome do respons�vel pela assinatura como o exemplo abaixo  
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


--A procedure abaixo � um exemplo que permite a mudan�a do plano de assinatura.
create procedure mudan�aDePlano(@plano VARCHAR(20))
AS
update Assinatura
set Plano_escolhido = @plano
where ID_assinatura = 9

GO

--A procedure abaixo � um exemplo que permite a mudan�a da forma de pagamento do plano de assinatura.
create procedure mudan�aDePagamento(@pgto VARCHAR(20))
AS
update Assinatura
set Forma_pgto = @pgto
where ID_assinatura = 13
