CREATE DATABASE db_registro;
 USE db_registro;
 
 CREATE TABLE tb_registro(
   id bigint auto_increment,
   nome varchar(25) not null,
   série varchar(20) not null,
   período varchar(15) not null,
   nota decimal (5,2) not null,
   
   primary key (id)
 );
 
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Karen", "2ºANO", "Matutino", 5.45);
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Fernanda", "5ºANO", "Matuitino", 5.6);
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Amelia", "1ºANO", "Matutino", 10.0);
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Gabriel", "7ºANO", "Noturno", 8.75);
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Valeria", "3ºANO", "Vespertino", 6.68);
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Henrique", "8ºANO", "Noturno", 9.75);
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Janbo", "1ºANO", "Vespertino", 7.56);
 INSERT INTO tb_registro(nome,série,período,nota) VALUES ("Guilherme", "9ºANO", "Matutino", 3.42);

 SELECT * FROM tb_registro;
 
 SELECT * FROM tb_registro WHERE nota > 7;
 
 SELECT * FROM tb_registro WHERE nota < 7;
 
 UPDATE tb_registro SET período = "Matutino" WHERE id = 4;
 
 SELECT * FROM tb_registro WHERE id = 4;
 
SELECT * FROM tb_registro;

/*Atividade 03

Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos
estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes 
dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/
