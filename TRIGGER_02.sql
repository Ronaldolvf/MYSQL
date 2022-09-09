CREATE DATABASE aula_banco;	
		                          
USE aula_banco;	
					                             
CREATE TABLE cliente(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(255) NOT NULL  
,cpf CHAR(14) NOT NULL UNIQUE 
,ativo CHAR(1) NOT NULL DEFAULT 'A'
,CONSTRAINT pk_cliente PRIMARY KEY (id)
);

CREATE TABLE conta_receber(
id INT NOT NULL AUTO_INCREMENT
,valor DECIMAL(10,2) NOT NULL
,cliente_id INT NOT NULL 
,CONSTRAINT pk_conta_receber PRIMARY KEY (id)
);

INSERT INTO cliente (nome,cpf) VALUES ('RAUL','111.111.111-11');
INSERT INTO cliente (nome,cpf) VALUES ('MARTA','222.222.222-22');
INSERT INTO cliente (nome,cpf) VALUES ('ANA','333.333.333-33');
INSERT INTO cliente (nome,cpf) VALUES ('JOCA','444.444.444-44');
INSERT INTO cliente (nome,cpf) VALUES ('PEDRO','555.555.555-55');
INSERT INTO cliente (nome,cpf) VALUES ('ANTÔNIO','666.666.666-66');
INSERT INTO cliente (nome,cpf) VALUES ('CACA','777.777.777-77');

INSERT INTO conta_receber (valor, cliente_id) VALUES (100, 1);
INSERT INTO conta_receber (valor, cliente_id) VALUES (150, 2);
INSERT INTO conta_receber (valor, cliente_id) VALUES (50, 3);
INSERT INTO conta_receber (valor, cliente_id) VALUES (200, 4);

select *from cliente;
select *from conta_receber;

DELIMITER //
create trigger validar_alteracao_cliente_inativo before update ON cliente for each row begin
 
	if NEW.ATIVO <> OLD.ATIVO AND
    exists (select *from conta_receber where cliente_id = NEW.ID)         # Verificando se o cliente existe na tabela "conta_receber". 
    then
    signal sqlstate "45000" set message_text = "BLOQUEADO";               # Para informa o erro. 
    end if;

END
//

DELIMITER //
create trigger validar_exclusao_cliente_inativo before delete ON cliente for each row begin
 

     if exists (select *from conta_receber where cliente_id = old.ID)
    then
    signal sqlstate "45000" set message_text = "CLIENTE N PODE SER EXCLUIRDO DEVIDO DIVIDA";
    end if;

END
//

DELIMITER ;

update cliente set ativo = "e" where ID = 1;

delete from cliente where id = 1; 

drop trigger validar_exclusao_cliente_inativo;
  