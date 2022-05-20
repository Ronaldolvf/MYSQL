select *from produtos;

update produtos set PRECO_LISTA = 5                                                                         # Tal função serve para modificar os dados das tabelas. Nesse caso esta modificando o valor.
where CODIGO = '1000889';

update produtos SET EMBALAGEM = "PET", TAMANHO = "1 LITRO", DESCRITOR = "Sabor da MONTANHA 1 LITRO UVA"     # Mudando mais de um vez.
where CODIGO = "1000889"; 

update produtos set PRECO_LISTA = PRECO_LISTA *1.10     # "PRECO_LISTA = PRECO_LISTA *1.10" Pegando o valor atual e aumentando 10% de todos os produtos que tem sabor maracujá. 
where SABOR = "Maracujá";

select *from vendedores;

select *from sucos_vendas.TABELA_DE_VENDEDORES;

select *from vendedores A                                                 # Juntando as tabelas. 
inner join sucos_vendas.TABELA_DE_VENDEDORES B
ON A.MATRICULA = substring(B.MATRICULA, 3, 3);

update vendedores A inner join sucos_vendas.TABELA_DE_VENDEDORES B        # Modificando o campo ferias. 
ON A.MATRICULA = substring(B.MATRICULA, 3, 3)
set A.FERIAS = B.DE_FERIAS;




