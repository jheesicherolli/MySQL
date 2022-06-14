CREATE DATABASE db_cidade_das_carnes;
  USE db_cidade_das_carnes;
  
   CREATE TABLE tb_categoria(
    idcategoria bigint auto_increment,
    qualidade varchar (30),
    categoria varchar (30),
    
    primary key(idcategoria)
    );
  
  CREATE TABLE tb_produtos(
     idprodutos bigint auto_increment,
     R$ decimal (5,2) not null,
     KG decimal (5,2) not null,
     marca varchar (30) not null,
     tipo varchar (30) not null,
     conexao bigint,
     
     primary key(idprodutos),
     foreign key(conexao) references tb_categoria(idcategoria)
  );
  
  INSERT INTO tb_categoria (qualidade, categoria) VALUES ("Carne de primeira", "Carne branca");
  INSERT INTO tb_categoria (qualidade, categoria) VALUES ("Carne de segunda", "Carne branca");
  INSERT INTO tb_categoria (qualidade, categoria) VALUES ("Carne de primeira", "Carne vermelha");
  INSERT INTO tb_categoria (qualidade, categoria) VALUES ("Carne de segunda", "Carne vermelha");
  INSERT INTO tb_categoria (qualidade, categoria) VALUES ("Carne de terceira", "Carne vermelha");

  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (79.87, 1.00, "Coelho Real", "Coelho", 1);
  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (55.00, 2.00, "Sadia", "Ovelha", 1);
  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (69.55, 1.73, "Perdigão", "Frango", 2);
  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (70.38, 1.60, "Estância 92", "Maminha",3);
  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (83.99, 1.40, "Friboi", "Picanha", 3);
  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (31.99, 1.65, "Maturatta", "Fraldinha", 4);
  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (61.54, 2.26, "Chef", "Costela", 4);
  INSERT INTO tb_produtos (R$, KG, marca, tipo, conexao) VALUES (98.26, 3.00, "Friboi", "Pescoço", 5);

  SELECT * FROM tb_produtos WHERE R$ > 50.00;
  
  SELECT * FROM  tb_produtos WHERE R$ BETWEEN 50.00 AND 150.00;
  
  SELECT * FROM tb_produtos WHERE marca LIKE("%C%");
  
  SELECT * FROM tb_produtos INNER JOIN tb_categoria ON idcategoria = conexao;
  
  SELECT * FROM tb_produtos INNER JOIN tb_categoria ON idcategoria = conexao WHERE categoria = "Carne Branca";

/*
Atividade 04

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
*/