select*from jogos;

select*from	new_table;
drop table new_table;

delete from new_table where NOME like "Anderson Cozzolino Filho";

CREATE TABLE `recanto_das_aguas`.`new_table` (
  `BL` VARCHAR(100) NOT NULL,
  `APTO` VARCHAR(100) NOT NULL,
  `GARDEN/ APTO/SOBRADO` VARCHAR(100) NULL,
  `NOME` VARCHAR(100) NOT NULL,
  `CPF` VARCHAR(100) NULL,
  `C.EMBUTIDO` VARCHAR(100) NULL,
  `PROGRAMAS` VARCHAR(100) NULL,
  `1ºOU2º AQUISIÇÕES` VARCHAR(100) NULL,
  `D.ASSINATURA` VARCHAR(100) NULL,
  `REGISTRADO/ASSINADO/CARTÓRIO/ VENDA DIRETA` VARCHAR(100) NULL,
  `D.ENTREGA` VARCHAR(100) NULL,
  `D.REGISTRO` VARCHAR(100) NULL,
  `PREFEITURA ( ITBI )` VARCHAR(100) NULL,
  `TX.EXPEDIENTE ITBI` VARCHAR(100) NULL,
  `TX.DE INS PREDIAL` VARCHAR(100) NULL,
  `AUTENTICAÇOES` VARCHAR(100) NULL,
  `H. CRED.OITO` VARCHAR(100) NULL,
  `ONUS REAIS` VARCHAR(100) NULL,
  `FORUMRIO/D. CAXIAS/PETRÓPOLIS/BELFORD ROXO` VARCHAR(100) NULL,
  `FORUM MAGÉ/RJ` VARCHAR(100) NULL,
  `REGISTRO` VARCHAR(100) NULL,
  `G.T.POR CLIENTE` VARCHAR(100) NULL,
  `D.CHEQUE /TRANSF./PIX` VARCHAR(100) NULL,
  `V.P.PELA CONSTRUTORA` VARCHAR(100) NULL,
  `V.P.CLIENTE` VARCHAR(100) NULL,
  `SOBRA E FALTA` VARCHAR(100) NULL,
  `REEMBOLSO` VARCHAR(100) NULL,
  `D.GARANTIA` VARCHAR(100) NULL,
  PRIMARY KEY (`NOME`));


SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM new_table;

select *from recebiveis where NOME like "E%";

select*from `controle unidades recanto das águas (sql)`;
drop table `controle unidades recanto das águas (sql)`;

select*from new_table where NOME like "%A";