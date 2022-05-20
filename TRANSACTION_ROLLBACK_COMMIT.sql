start transaction;                 # Iniciando a transacao

select *from vendedores;

update vendedores set	COMISSAO = COMISSAO *1.15;              # Aumentando 15% as comissaoes

rollback;                                                       # Voltando a transacao(Nao salva). 

commit;                                                         # Salva a transacao. 

start transaction;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
("99998",
"JOAO DA SILVA",
"ICARAI",
0.08,
"2012-01-15",
0);

rollback;

delete from vendedores where MATRICULA = "99999";