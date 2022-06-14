CREATE DATABASE db_construindo_vidas;
  USE db_construindo_vidas;

CREATE TABLE tb_categoria(
  idcategoria bigint auto_increment,
  finalidade varchar(30) not null,
  setor varchar (10) not null,
  
  primary key(idcategoria)
  );

CREATE TABLE tb_produtos(
  idprodutos bigint auto_increment,
  material varchar (30) not null,
  preco decimal(5,2) not null,
  tempoConstrucao varchar(30) not null,
  envio varchar(30) not null,
  numPedido bigint not null,

primary key(idprodutos),
foreign key(numPedido) references tb_categoria(idcategoria)
);

INSERT INTO tb_categoria (finalidade, setor) VALUES ("Apartamento", "A-1");
INSERT INTO tb_categoria (finalidade, setor) VALUES ("Casa", "A-2");
INSERT INTO tb_categoria (finalidade, setor) VALUES ("Chácara", "´B-1");
INSERT INTO tb_categoria (finalidade, setor) VALUES ("Sítio", "B-1");
INSERT INTO tb_categoria (finalidade, setor) VALUES ("Sobrado", "C-1");


INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Concreto", 210.56, "2 anos", "4 dias", 1);
INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Ferro e Aço", 359.78, "2 anos", "2 dias", 1);
INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Tijolo", 520.00, "1 ano e 6 meses", "3 dias", 2);
INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Tubos de PVC", 79.57, "1 ano e 6 meses", "2 dias", 2);
INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Madeira", 147.91, "9 meses", "6 dias", 3);
INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Pedras", 55.96, "1 ano", "15 dias", 4);
INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Argamassa", 141.90, "8 meses", "10 dias", 5);
INSERT INTO tb_produtos (material, preco, tempoConstrucao, envio, numPedido) VALUES ("Caixas de Luz", 135.79,"8 meses", "7 dias", 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE material LIKE ("%C%");

SELECT * FROM tb_categoria INNER JOIN tb_produtos ON idcategoria = numPedido;

SELECT * FROM tb_categoria INNER JOIN tb_produtos ON idcategoria = numPedido WHERE tempoConstrucao = "1 ano e 6 meses";

/*
Atividade 05

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).
*/