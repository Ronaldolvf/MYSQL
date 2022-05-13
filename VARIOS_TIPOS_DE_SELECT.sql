select *from tabela_de_produtos where SABOR = "manga"               # Selecionando o sabor sabor ou tamanho.
or TAMANHO = "470 ml";

select *from tabela_de_produtos where SABOR = "manga"
or SABOR = "laranja";

select *from tabela_de_produtos where SABOR = "manga"               # Selecionando o que tiver o sabor e o tamanho ao mesmo tempo. 
and TAMANHO = "470 ml";

select *from tabela_de_produtos where SABOR = "manga"               # Filtrando pelo sabor e aliminando os com 470ml. 
and not (TAMANHO = "470 ml");

select *from tabela_de_produtos where not(SABOR = "manga"          # Eliminando o sabor manga e o tamanho 1 litro da consulta. 
or TAMANHO = "1 litro");

select *from tabela_de_clientes where Cidade in ("RIO DE JANEIRO" AND "SÃO PAULO")         # Filtrando entre Rio e SP e excluindo a idade de 20 a 22.
AND not(IDADE >= 20 AND IDADE <= 22); 

select *from tabela_de_produtos where SABOR like '%maça%';                                          # Selecionando a estrutura de caractéries. 

select *from tabela_de_produtos order by PRECO_DE_LISTA;                                            # Colocando em ordem crecente. 

select *from tabela_de_produtos order by PRECO_DE_LISTA desc;                                       # Colocando em ordem decrescente

select *from tabela_de_produtos order by NOME_DO_PRODUTO, EMBALAGEM;                                # Colocando em ordem.

select estado, sum(limite_de_credito) as limite_total from tabela_de_clientes group by ESTADO;      # Somando o limite total e agrupando.

select embalagem, max(PRECO_DE_LISTA) as maior_preço from tabela_de_produtos group by EMBALAGEM;    # Tirando o maior preço e agrupando.

select embalagem, count(*) as contador from tabela_de_produtos group by EMBALAGEM;                  # Quando se usa o count(*) está se contando o total. Nesse caso, está se contando a embalagem.  

select TAMANHO, count(*) AS QUATIDADE, EMBALAGEM  from tabela_de_produtos GROUP BY TAMANHO
order by QUATIDADE;

select BAIRRO, sum(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes                            # Agrupando por bairro e somando os limites. 
where CIDADE = "RIO DE JANEIRO" group by BAIRRO;	

select bairro, LIMITE_DE_CREDITO from tabela_de_clientes;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' 
GROUP BY ESTADO, BAIRRO 
ORDER BY LIMITE;  

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) as SOMA_LIMITE FROM tabela_de_clientes
GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO) > 900000;

select NOME,sum(LIMITE_DE_CREDITO)  from tabela_de_clientes group by NOME;

select * , sum(LIMITE_DE_CREDITO) AS LIMITE from tabela_de_clientes;

select *from tabela_de_vendedores  inner join notas_fiscais;      # Selecionando a tabela a e b.
 
select A.MATRICULA, nome, count(*) from tabela_de_vendedores a 
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA
group by A.MATRICULA, nome;                                   

select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes a
left join notas_fiscais B ON A.CPF = B.CPF;                      # Filtrando a tabela esquerda.alter

SELECT 
tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;                              # Au inves de usar o A ou o B, usa-se nome da tabela e a coluna.

select distinct BAIRRO FROM tabela_de_clientes
union all                                                   # Para seleionar duas ou mais tabelas.
select distinct BAIRRO FROM tabela_de_vendedores;


SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' as TIPO_CLIENTE, CPF FROM tabela_de_clientes
UNION                                                                                              # Sem o all, o distinct é aplicado.
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' as TIPO_VENDEDOR, MATRICULA FROM tabela_de_vendedores;

select *from tabela_de_clientes where BAIRRO
IN (select distinct BAIRRO from tabela_de_clientes);                                             # Fazer uma seleção dentro de outras seleção.

SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.MAIOR_PRECO >= 10;

SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
VW_MAIORES_EMBALAGENS X WHERE X.MAIOR_PRECO >= 10;         # Esta usandovw_maiores_embalagensEMBALAGEMMAIOR_PRECOMAIOR_PRECOEMBALAGEMvw_maiores_embalagens  vw para substituir o selec....










