create table tbCliente2
(CPF varchar(11),
NOME varchar(100),
Endereco varchar(150),
ENDERECO2 varchar(150),
BAIRRO varchar(50),
CIDADE varchar (50),
ESTADO varchar (50),
CEP varchar (8),
IDADE smallint,
SEXO varchar (1),
LIMITE_CREDITO float,
VOLUME float,
PRIMEIRA_COMPRA bit(1));

drop table tbCliente2;                                        # Para deleta a tabela.

insert into tbprofuto(                                        # Para inserir os dados na coluna. 
PRODUTO,
NOME,
EMBALAGEM,
TAMANHO,
SABOOR,
PRECO_LISTA) values(
'1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31);

update tbprofuto set EMBALAGEM = 'Lata', PRECO_LISTA = 2.46             # Tal função serve para modificar os dados das tabelas.
where PRODUTO = '544931';                                               # indica a chave so produto. 

