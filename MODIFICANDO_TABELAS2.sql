CREATE TABLE `produtos2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRITOR` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANHO` varchar(50) DEFAULT NULL,
  `EMBALAGEM` varchar(50) DEFAULT NULL,
  `PRECO_LISTA` double DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


insert into produtos2                   # Transferindo todas as informacoes da tabela "produtos" para a tabela "produtos2". 
select *from produtos;

update produtos2 set preco_lista = 1;   # Modificando todo a coluna "preco_lista" na tabrla "produtos2".

select *from produtos2;

