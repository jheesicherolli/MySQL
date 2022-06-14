CREATE DATABASE db_famacia_bem_estar;
  USE db_famacia_bem_estar;
  
  CREATE TABLE tb_categoria(
   idcategoria bigint auto_increment,
   sessao varchar(30) not null,
   corredor varchar(10),

   primary key(idcategoria)
  );
  
  CREATE TABLE tb_produtos(
  idprodutos bigint auto_increment,
  nome varchar(30) not null,
  R$ decimal(5,2) not null,
  receita varchar(5)not null,
  quantEstoque int not null,
  distribuidora bigint,
  
  primary key(idprodutos),
  foreign key(distribuidora) references tb_categoria (idcategoria)
  );
  
  INSERT INTO tb_categoria (sessao, corredor) VALUES ("Bebês", "B-1");
  INSERT INTO tb_categoria (sessao, corredor) VALUES ("Remédios", "A-2");
  INSERT INTO tb_categoria (sessao, corredor) VALUES ("Cosméticos", "A-1");
  INSERT INTO tb_categoria (sessao, corredor) VALUES ("Homens", "B-2");
  INSERT INTO tb_categoria (sessao, corredor) VALUES ("Mulheres", "B-3");
  
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Fraldas", 229.00, "Não", 30, 1);
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Pomada Bepantol", 45.15, "Não", 90, 1);
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Dipirona", 59.00, "Sim", 28,  2);
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Benzodiazepina", 5.69, "Sim", 156, 2);
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Sabonete ACTINE", 37.73 , "Não", 54, 3);
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Prestobarba", 69.70, "Não", 256, 4);
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Máscara Facial", 19.99, "Não", 9, 5);
  INSERT INTO tb_produtos (nome, R$, receita, quantEstoque, distribuidora) VALUES ("Loção Hidratante CERAVE", 67.89, "Não", 81, 5);

SELECT * FROM tb_produtos WHERE R$ > 50.00;

SELECT * FROM tb_produtos WHERE R$ BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE ("%C%");

SELECT * FROM tb_categoria INNER JOIN tb_produtos on idcategoria = distribuidora;

SELECT * FROM tb_categoria INNER JOIN tb_produtos on idcategoria = distribuidora WHERE sessao = "Remédios";


/*
Atividade 03

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).*/
