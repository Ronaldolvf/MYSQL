create table TAB_INDENTITY (ID INT AUTO_INCREMENT, DESCRITOR VARCHAR(20), PRIMARY KEY (ID));   # Já coloca o campo "ID" automaticamente deviso a ser "AUTO_INCREMENT". 

insert into tab_indentity (DESCRITOR) values ("CLIENTE07");

select *from tab_indentity;

delete from tab_indentity where ID = "2";                                                       # Apagando o com "ID" 2. Idependente de deletar, o "ID" irar seguir a seguencia original. 

insert into tab_indentity (ID, DESCRITOR) values (100, "CLIENTE06");                            # Como informo o "ID", a seguencia muda. 

create table TB_PADRAO
(ID INT auto_increment, 
DESCRITOR varchar(20),                                                                         # Como não há nada apos a virgula, indica que não há nenhum padrão isso o obriga sempre ser colocado. 
ENDERECO varchar(100) null,                                                                    # Se não informa nada, será nulo. 
CIDADE varchar(50) default "RIO DE JANEIRO",                                                   # Se não informa nada, vai ser preenchido como "RIO DE JANEIRO". 
DATA_CRIACAO timestamp default current_timestamp(),                                            # Se não informa nada, Vai ser a hora do computador. 
primary key (ID));

insert into tb_padrao (DESCRITOR, ENDERECO, CIDADE, DATA_CRIACAO)
values ("CLIENTE X", "RUA PROJETADA A", "SÃO PAULO", "2019-01-01");

insert into tb_padrao (DESCRITOR)
values ("CLIENTE Y");

select *from tb_padrao;