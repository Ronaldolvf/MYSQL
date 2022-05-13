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

drop table tbCliente2;                                                 # Para deleta a tabela.

insert into tbprofuto(                                                 # Para inserir os dados na coluna. 
PRODUTO,
NOME,
EMBALAGEM,
TAMANHO,
SABOOR,
PRECO_LISTA) values(
'1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31);

select CPF, NOME FROM tbcliente limit 5;                                  # Selecionando o CPF e o NOME com limite de cinco linhas. 

select  SABOR from tabela_de_produtos where SABOR = 'laranja'
group by SABOR;                                                           # Selecioando na tabela_de_produtos apenas com sabor" laranja". 

select  NOME_DO_PRODUTO, SABOR from tabela_de_produtos                    # Filtrando pelo sabor. 
where SABOR = "maça"
group by NOME_DO_PRODUTO;

update tbprofuto set EMBALAGEM = 'Lata', PRECO_LISTA = 2.46             # Tal função serve para modificar os dados das tabelas.
where PRODUTO = '544931';                                               # indica a chave so produto. 

update tbproduto set SABOR = 'Cítricos' where SABOR = 'Limão';

delete from tbprofuto                                                   # Para apagar um registro da tabela. 
where PRODUTO = '1078680'; 

alter table tbprofuto add primary key (PRODUTO);                        # Criando uma chave primária.
