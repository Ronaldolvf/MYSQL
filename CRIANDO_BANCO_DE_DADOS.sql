################ Criando banco de dados#############

create database vendas_sucos;                                     # Criando um banco de dados. 

create database vendas_sucos2 default character set utf8;         # Criando um tabela de caractéries padrões. 
 
create database if not exists vendas_sucos2;                      # Criar um banco se já não existi com o mesmo nome. 

drop database if exists vendas_sucos2;                            # Apagando o banco de dados. 

create table PRDUTOS
(CODIGO varchar(10) not null,
DESCRITOR varchar(100) null,
SABOR varchar(50) null,
TAMANHO varchar(50) null,
EMBALAGEM varchar(50) null,
PRECO_LISTA float(50) null,
primary key (CODIGO));                                                              # Já indicando a chave primária. 

select *from vendedores;

create table VENDEDORES
(MATRICULA varchar(5) not null,
NOME varchar(100) null,
BAIRRO varchar(50) null,
COMISSAO float  null,
DATA_ADIMISSAO date null,
FERIAS BIT(1) null,
primary key (MATRICULA)); 

alter table vendedores rename column DATA_ADIMISSAO TO DATA_ADMISSAO;                # Mudandando o nome da coluna. 
 
create table CLIENTES
(CPF varchar(11) not null,
NOME varchar(100) null,
EMDERECO varchar(150) null,
BAIRRO varchar(50) null,
CIDADE varchar(50) null,
ESTADO varchar(50) null,
CEP varchar(8) null,
DATA_NASCIMENTO date null,
IDADE int null,
SEXO varchar(1) null,
LIMITE_CREDITO float null,
VOLUME_COMPRA float null,
PRIMEIRA_COMPRA bit(1) null,
primary key (CPF));

create table TABELA_DE_VENDAS
(NUMERO varchar(5) not null,
DATYA_VENDA date null,
CPF varchar(11) not null,
MATRICULA varchar(5) not null,
IMPOSTO float null,
primary key (NUMERO)); 

alter table tabela_de_vendas ADD constraint FK_CLIENTES                             # Criando uma chave estrangeira. # O fk se usa como padrão. 
foreign key (CPF) references CLIENTES (CPF);

alter table tabela_de_vendas add constraint FK_VENDEDORES
foreign key (MATRICULA) references VENDEDORES (MATRICULA);

alter table tabela_de_vendas rename NOTAS;                                           # Alterando o nome da tabela.

create table ITENS_NOTAS
(NUMERO varchar(5) not null,
CODIGO varchar(10) not null,
QUANTIDADE int,
PRECO float,
primary key (NUMERO, CODIGO));

alter table itens_notas add constraint FK_NOTAS
foreign key (NUMERO) references NOTAS (NUMERO);

alter table ITENS_NOTAS add constraint FK_PRODUTOS
foreign key (CODIGO) references PRODUTOS (CODIGO);

select *from itens_notas;    