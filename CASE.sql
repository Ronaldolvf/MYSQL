select SABOR from tabela_de_produtos where CODIGO_DO_PRODUTO like "1000889";

select *from tabela_de_produtos;

CALL ACHA_TIPO_SABOR ("1000889");                        # Usando o case. 

CALL ACHA_STATUS_PRECO_CASE ("1000889");


create table TAB_LOOPING (ID int);

call LOOPING_WHILE_CASE (1, 12);

SELECT *FROM TAB_LOOPING;

