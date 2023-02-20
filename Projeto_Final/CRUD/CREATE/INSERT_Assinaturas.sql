insert into Assinatura (
	ID_cl,
	Dt_assinatura,
	Dt_fim_assinatura,
	Plano_escolhido,
	Forma_pgto
) values (
(select ID_cliente from Cliente where ID_cliente = 11),
'2015/01/23',
NULL,
'Basico sem anuncios',
'Cartao pre-pago'
)

insert into Assinatura (
	ID_cl,
	Dt_assinatura,
	Dt_fim_assinatura,
	Plano_escolhido,
	Forma_pgto
) values (
(select ID_cliente from Cliente where ID_cliente = 12),
'2018/09/07',
NULL,
'Basico com anuncios',
'Cartao de debito'
)

insert into Assinatura (
	ID_cl,
	Dt_assinatura,
	Dt_fim_assinatura,
	Plano_escolhido,
	Forma_pgto
) values (
(select ID_cliente from Cliente where ID_cliente = 13),
'2012/03/04',
NULL,
'Basico sem anuncios',
'Cartao de credito'
)

insert into Assinatura (
	ID_cl,
	Dt_assinatura,
	Dt_fim_assinatura,
	Plano_escolhido,
	Forma_pgto
) values (
(select ID_cliente from Cliente where ID_cliente = 14),
'2010/01/10',
'2020/05/09',
'Premium',
'Cartao de credito'
)

insert into Assinatura (
	ID_cl,
	Dt_assinatura,
	Dt_fim_assinatura,
	Plano_escolhido,
	Forma_pgto
) values (
(select ID_cliente from Cliente where ID_cliente = 15),
'2019/10/25',
NULL,
'Premium',
'Cartao de credito'
)

insert into Assinatura (
	ID_cl,
	Dt_assinatura,
	Dt_fim_assinatura,
	Plano_escolhido,
	Forma_pgto
) values (
(select ID_cliente from Cliente where ID_cliente = 16),
'2014/03/11',
NULL,
'Premium',
'Cartao pre-pago'
)

