select floor((rand()* (300- 15+ 1)+ 15));                    # Acha um número entre máximo e mínimo.    # A função "floor" pega apenas a parte inteira do número. 

select F_NUMERO_ALEATORIO (1, 100);                          # Retornando a "functions" criada e retornando o númeoro aleatório.alter

select *FROM tabela_de_clientes LIMIT 5;                     # Está pegando até o quinto cliente.

select *FROM tabela_de_clientes LIMIT 5, 1;                  # Está pegando o sexto cliente.

select f_cliente_aleatorio();                                # Traz um "cpf" de forma aleatórioa. 

select f_produto_aleatorio(),  f_vendedor_aleatorio();