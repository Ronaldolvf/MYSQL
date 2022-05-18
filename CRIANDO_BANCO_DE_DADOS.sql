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
