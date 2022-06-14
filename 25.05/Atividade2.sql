CREATE DATABASE db_pizzaria_legal;
  USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
 idcategoria bigint auto_increment,
 estabelecimento varchar (30) not null,
 bebida varchar(15) not null,
 brinde boolean,
 
 primary key (idcategoria)
 
);

CREATE TABLE tb_pizzas(
 idpizzas bigint auto_increment,
 sabor varchar(20),
 tipo varchar (10),
 R$ decimal(5,2),
 /*se não der certo substituir por reais*/
 dono bigint,
 /*ver se dono vai dar certo sendo varchar e chave estrangeira*/
  
  primary key (idpizzas),
  foreign key (dono) references tb_categoria (idcategoria)
);

INSERT INTO tb_categoria (estabelecimento, bebida, brinde) VALUES ("Três Corações", "Coca-Cola", true);
INSERT INTO tb_categoria (estabelecimento, bebida, brinde) VALUES ("The Best", "Fanta Uva", true);
INSERT INTO tb_categoria (estabelecimento, bebida, brinde) VALUES ("Canto da Pizza", "Fanta Laranja", false);
INSERT INTO tb_categoria (estabelecimento, bebida, brinde) VALUES ("Pizza Planet", "Sprite", true);
INSERT INTO tb_categoria (estabelecimento, bebida, brinde) VALUES ("Pizza Planet", "Soda", true);

INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Marquerita", "Salgada", 45.50, 1);
INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Brigadeiro", "Doce", 35.56, 1);
INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Mussarela", "Salgada", 37.00, 2);
INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Romeu e Julieta", "Doce", 19.99, 2);
INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Frango com Catupiry", "Salgada", 47.00, 3);
INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Atum", "Salgada", 49.00, 3);
INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Banana", "Doce", 23.59, 4);
INSERT INTO tb_pizzas (sabor, tipo, R$, dono) VALUES ("Tomate Seco", "Salgada", 53.00, 4);

SELECT * FROM tb_pizzas WHERE R$ > 45.00;

SELECT * FROM tb_pizzas WHERE R$ BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE ("%M%");

SELECT * FROM tb_categoria INNER JOIN tb_pizzas on idcategoria = dono;

SELECT * FROM tb_categoria INNER JOIN tb_pizzas on idcategoria = dono WHERE tipo = "Doce";



/*Atividade 02
Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/
