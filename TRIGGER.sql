create table PRODUTO(
IDPRODUTO int not null auto_increment,
NOME_PRODUTO varchar (45) null,
PRECO_NORMAL decimal (10, 2) null,
PRECO_DESCONTO decimal (10, 2) null,
primary key (IDPRODUTO));

create trigger TR_DESCONTO before insert ON PRODUTO FOR each row set 
NEW.PRECO_DESCONTO = (NEW.PRECO_NORMAL * 0.90);

insert into PRODUTO (NOME_PRODUTO, PRECO_NORMAL)
values ("MONITO", 350);

insert into PRODUTO (NOME_PRODUTO, PRECO_NORMAL)
values ("DVD", 1.00);

insert into PRODUTO (NOME_PRODUTO, PRECO_NORMAL)
values ("PENDRIVE", 18.00);

select *from PRODUTO;

drop trigger TR_DESCONTO;