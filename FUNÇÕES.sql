################## Exemplos de funções.#####################

select TRIM("      OLÁ  CARRO      ") AS RESULTADO;                            # Tirando o espaço da esquerda e direita. Para tirar da esquerda, usa-se LTRIM e para direita o RTRIM.

select concat("      OLÁ ", "", "TUDO BÉM?"   );                               # Para concatena.

select substring("OLÁ, TUDO BEM?", 6) AS RESULTADO;                            # Buscando a parti da 6 posição. OBS: O espaço conta. 

select substring("OLÁ, TUDO BEM?", 6, 4) AS RESULTADO;                         # Buscando a parti da 6 posição até a 4. 

SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM TABELA_DE_CLIENTES;     # Usando a função para busca o nome do cliente e entre parentes o CPF. 

select current_timestamp();                                                    # A current_... da pra saber o data, hora e nome do servidor. 

SELECT CURRENT_TIMESTAMP() AS DIA_HOJE, DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;     # Diminuindo 5 dias da data de hoje.

SELECT DISTINCT DATA_VENDA,
DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO FROM NOTAS_FISCAIS;

SELECT CEILING(12.33333232323) AS RESULTADO;     # Aredonda para o próximo número inteiro.

SELECT FLOOR(12.7777232323) AS RESULTADO;        # Retorno será 12, independentemente dos números nas casas decimais.

select rand() AS RESULTADO;                      # Informa um número aleatório.

 SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO
 FROM ITENS_NOTAS_FISCAIS;
 
SELECT CONCAT('O dia de hoje é: ', 
DATE_FORMAT(CURRENT_TIMESTAMP(),'%d/%c/%y') ) AS RESULTADO;     # Está concacteando e indicando o mes, o dia e ano. 

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CAST(SUM(INF.QUANTIDADE * INF.preco) AS char (20))
 , ' no ano ', CAST(YEAR(NF.DATA_VENDA) AS char (20))) AS SENTENCA FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME, YEAR(DATA_VENDA);

SELECT NF.CPF, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS MES_ANO, INF.QUANTIDADE FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO;



