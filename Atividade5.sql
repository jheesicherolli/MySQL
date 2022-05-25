
CREATE DATABASE db_brechó;
 USE db_brechó;
 
 CREATE TABLE tb_produtos(
   id bigint,
   tipo varchar (15) not null,
   marca varchar (25) not null,
   valor decimal (5,2),
   tamanho varchar (10) not null,
   
   primary key(id)
 );
 
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (2, "Camiseta", "Adidas", 139.50, "PP");
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (3, "Short", "Overcome", 49.99, "P");
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (1, "Casaco", "Gucci", 259.60, "M");
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (7, "Meias", "Puma", 35.46, "P");
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (4, "Moletom", "Hollister", 394.75, "G");
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (8, "Calça Jeans", "Lacoste", 36.58, "GG");
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (5, "Regata", "C&A", 19.50, "P");
 INSERT INTO tb_produtos (id,tipo,marca,valor,tamanho) VALUES (6, "Vestido", "Calvin Klein", 395.58, "Extra G");
 
 SELECT * FROM tb_produtos;
 
 SELECT * FROM tb_produtos WHERE valor > 50;
 
 SELECT * FROM tb_produtos WHERE valor < 50;
 
 SELECT * FROM tb_produtos WHERE id = 2;
 
 UPDATE tb_produtos SET marca = "Polo" WHERE id = 3;
  SELECT * FROM tb_produtos;

 
 DELETE FROM tb_produtos WHERE id = 2;
 DELETE FROM tb_produtos WHERE id = 3;
   SELECT * FROM tb_produtos;

/*Atividade 05

Crie um banco de dados para um brechó online, onde o sistema trabalhará com as informações dos produtos deste
e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço 
deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todos os produtos com o valor maior do que 50.
Faça um SELECT que retorne todos os produtos com o valor menor do que 50.
Faça um SELECT que retorne todos os produtos com ID = 2.
Ao término atualize um registro desta tabela através de uma query de atualização.
Por fim, faça um DELETE dos produtos com ID = 2 e ID = 3. 
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL)
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
 */
