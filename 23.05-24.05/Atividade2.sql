CREATE DATABASE db_ecommerce;
 USE db_ecommerce;

CREATE TABLE tb_produtos(
   id bigint auto_increment,
   nome varchar (25) not null,
   valor decimal(6,2) not null,
   fornecedor varchar (30) not null,
   tipo varchar (20) not null,

   primary key (id)
);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Refrigerante", 786.50, "Coca-Cola", "Não Perecível");
INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Fruta", 560.00, "Dois Irmãos", "Perecível");
INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Farofa", 800.49, "YOKI", "Não Perecível");
INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Sucrilhos", 150.77, "Kellogg's", "Não Perecível");
INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Pizza congelada", 240.00, "Sadia", "Não Perecível");
INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Carne", 500.60, "Friboi", "Perecível");
INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Leite", 456.00, "Italac", "Perecível");
INSERT INTO tb_produtos (nome,valor,fornecedor,tipo) VALUES ("Salgadinho", 275.60, "Cheetos", "Não Perecível");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

UPDATE tb_produtos SET valor = 280.00 WHERE id = 8;

SELECT * FROM tb_produtos;



 /*Atividade 02

Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço 
deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e 
coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/
