CREATE DATABASE db_generation_game_online;
 USE db_generation_game_online;
 
CREATE TABLE tb_classes(
   idclasse bigint auto_increment,
   defesa int,
   fraqueza varchar (30),
   
   primary key(idclasse)
);

CREATE TABLE tb_personagem(
 idpersonagem bigint auto_increment,
 nome varchar(25) not null,
 ataque int,
 classe varchar (30) not null,
 habilidade varchar(30) not null,
 categoria bigint not null,

primary key(idpersonagem),
foreign key (categoria) references tb_classes(idclasse)
);

INSERT INTO tb_classes(defesa, fraqueza) VALUES (1085, "Flores");
INSERT INTO tb_classes(defesa, fraqueza) VALUES (1998, "Kriptonita");
INSERT INTO tb_classes(defesa, fraqueza) VALUES (3968, "Fogo");
INSERT INTO tb_classes(defesa, fraqueza) VALUES (4097, "Abelha");
INSERT INTO tb_classes(defesa, fraqueza) VALUES (1077, "Carne");

INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Valentina",2098,"Guerreira", "Agilidade",1);
INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Patrick",7569,"Mago", "Fogo", 4);
INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Fabricio",7569,"Bardos", "Instrumentos Musicais", 4);
INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Amélia",2098,"Arqueira", "Precisão", 1);
INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Guilherme",5485,"Ladrão", "Mão Leve", 3);
INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Erick",957,"Caçador","Combate à distância", 5);
INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Carol",1095,"Curandeira", "Cura e Ressureição", 2);
INSERT INTO  tb_personagem(nome, ataque, classe, habilidade, categoria) VALUES ("Cris",1095,"Curandeira", "Cura", 2);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_classes WHERE defesa between 1000 and 2000;

SELECT * FROM tb_personagem WHERE nome LIKE ("%c%");

SELECT * FROM tb_personagem INNER JOIN tb_classes on categoria = idclasse;

SELECT * FROM tb_personagem INNER JOIN tb_classes on categoria = idclasse WHERE classe = "Curandeira";


/*ATIVIDADE 01
Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
Insira 5 registros na tabela tb_classes.
Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).*/
