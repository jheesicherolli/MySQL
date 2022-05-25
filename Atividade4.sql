CREATE DATABASE db_quitanda;
 USE db_quitanda;
 
 CREATE TABLE tb_produtos(
 id bigint auto_increment, 
 nome varchar (25) not null,
 tipo varchar (25),
 valor decimal (6,2) not null,
 quantidade int not null, 
 peso decimal (4,2) not null,
 ativo boolean,
 
 primary key(id)
 );

INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Abobrinha", "Legume", 2.00, 30, 5.00, true);
INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Goiaba", "Fruta", 5.00, 65, 2.00, true);
INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Laranja", "Fruta", 7.00, 20, 1.50, true);
INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Beterraba", "Legume", 3.00, 15, 1.75, true);
INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Alface", "Verdura", 1.50, 25, 1.00, true);
INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Banana", "Fruta", 10.00, 68, 1.40, true);
INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Espinafre", "Verdura", 9.75, 44, 0.50, true);
INSERT INTO tb_produtos (nome,tipo,valor,quantidade,peso,ativo) VALUES ("Rúcula", "Verdura", 2.50, 90, 0.15, true);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE tipo = "Fruta";

SELECT * FROM tb_produtos WHERE tipo = "Legume";

UPDATE tb_produtos SET nome = "Maça" WHERE id = 6;

SET sql_safe_updates = 0;

DELETE FROM tb_produtos WHERE tipo = "Verdura";

SELECT* FROM tb_produtos;

/*
ATIVIDADE 04
Crie um banco de dados para a quitanda Generation, onde o sistema trabalhará com as informações dos 
produtos desta empresa. 
Crie uma tabela de produtos e determine 5 atributos relevantes destes produtos para se trabalhar com o 
sistema da quitanda.
Insira nesta tabela no mínimo 8  dados (registros).
Faça um SELECT que retorne todos os produtos que sejam frutas.
Faça um SELECT que retorne todos os produtos que sejam legumes .
Ao término atualize um registro desta tabela através de uma query de atualização.
Por fim, faça um DELETE de todas às verduras. 
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e 
coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/

