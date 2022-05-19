#############Incluindo dados#######

insert into produtos (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
values ("1040107", "Light - 350ml - Melancia", "Melancia", "350ml", "lata", 4.56);

insert into produtos (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
values ("1040108", "Light - 350ml - Graviola", "Graviola", "350ml", "lata", 4.00);

insert into produtos                                                                  # Inserindo na tabela sem a descrisão da coluna.
values ("1040109", "Light - 350ml - Açai", "Açai", "350ml", "lata", 5.60); 

insert into produtos                                                                
values ("1040110", "Light - 350ml - Jaca", "Jaca", "350ml", "lata", 6.00),           # Inserindo mais de um por vez.
("1040111", "Light - 350ml - Manga", "Manga", "350ml", "lata", 3.50); 

select *from sucos_vendas.tabela_de_produtos;                                       # Como não está selecionado o sucos_vendas, tem que colocar na frete do nome da tabela. 

insert into produtos
select CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA AS PRECO_LISTA  
from sucos_vendas.tabela_de_produtos
where CODIGO_DO_PRODUTO	NOT IN (select CODIGO from PRODUTOS);

select *from clientes;

select *from sucos_vendas.tabela_de_clientes; 

insert into clientes                                           # Inserindo os dados do banco sucos_vendas na tabela_de_clientes no banco vendas_sucos na tabela clientes 
select CPF, NOME, ENDERECO_1 As ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, SEXO, 
LIMITE_DE_CREDITO AS LIMITE_CREDITO, VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA from sucos_vendas.tabela_de_clientes
where CPF not in (select CPF from clientes) ;

