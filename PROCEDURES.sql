CALL ALO_MUNDO2;                                            # O resultado do procedure criado. 

CALL MANIPULACAO_DADOS; 

CALL INCLUI_NOVO_PRODUTO;

SELECT *FROM tabela_de_produtos where NOME_DO_PRODUTO LIKE "SABOR DO MAR%";

CALL INCLUI_NOVO_PRODUTO_PARAMETRO ("4000005", "SABOR DO PANTANAL 1 LITRO - MELANCIA", "MELACIA", "1 LITRO", "PET", 4.76);     # Incluindo os dados na tablea "tabela_de_produtos".  

SELECT SABOR FROM tabela_de_produtos where CODIGO_DO_PRODUTO LIKE "4000001";

CALL ACHA_SABOR_PRODUTO ("1013793"); 

SELECT *FROM tabela_de_clientes;

select DATA_DE_NASCIMENTO from tabela_de_clientes where CPF like "1471156710";

call CLIENTE_NOVO_VELHO ("1471156710");

SELECT *FROM tabela_de_produtos;

select PRECO_DE_LISTA from tabela_de_produtos where CODIGO_DO_PRODUTO like "1000889";

call ACHA_STATUS_PRECO ("1471156710");