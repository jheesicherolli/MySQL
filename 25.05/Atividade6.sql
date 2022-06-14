CREATE DATABASE db_curso_da_minha_vida;
  USE db_curso_da_minha_vida;
  
  CREATE TABLE tb_categoria(
    idcategoria bigint auto_increment,
    area varchar (30) not null,
    tempoAula varchar(30) not null,

    primary key(idcategoria)
    );

CREATE TABLE tb_cursos(
  idcursos bigint auto_increment,
  nome varchar (30) not null,
  vagas int not null,
  disponibilidade boolean,
  R$ decimal(6,2) not null,
  link bigint not null,
  
  primary key (idcursos),
  foreign key(link) references tb_categoria(idcategoria)
  );
  
  INSERT INTO tb_categoria (area, tempoAula) VALUES ("Ciências Exatas", "60 minutos"); 
  INSERT INTO tb_categoria (area, tempoAula) VALUES ("Ciências Biológicas", "1 hora e 45 minutos"); 
  INSERT INTO tb_categoria (area, tempoAula) VALUES ("Engenharias", "55 minutos"); 
  INSERT INTO tb_categoria (area, tempoAula) VALUES ("Ciências da Saúde", "1 hora e 20 minutos "); 
  INSERT INTO tb_categoria (area, tempoAula) VALUES ("Linguística, Letras e Artes", "45 minutos"); 

  
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Matemática", 49, true, 898.96, 1); 
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Astronomia", 55, true, 1098.76, 1); 
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Biologia", 157, false, 1500.00, 2); 
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Fisiologia", 93, true, 3312.00, 2 ); 
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Engenharia Civil", 66, false, 3000.00, 3); 
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Naval", 74, false, 1812.48, 3); 
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Fisioterapia", 189, false, 597.99, 4); 
  INSERT INTO tb_cursos (nome, vagas, disponibilidade, R$, link) VALUES ("Teatro", 87, true, 793.59, 5); 
  
  SELECT * FROM tb_cursos WHERE R$ > 500.00;
  
  SELECT * FROM tb_cursos WHERE R$ BETWEEN 600.00 AND 1000.00;
  
  SELECT * FROM tb_cursos WHERE nome LIKE ("%J%");
  
  SELECT * FROM tb_categoria INNER JOIN tb_cursos ON idcategoria = link;
  
  SELECT * FROM tb_categoria INNER JOIN tb_cursos ON idcategoria = link WHERE link = 2;



/*
Atividade 06

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
*/