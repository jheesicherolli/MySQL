CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_trabalhadores(
 id bigint (5) auto_increment,
 nome varchar (25)not null, 
 setor varchar(20) not null,
 salário decimal(6,2) not null,
 idade int not null,
 ativo boolean,

 primary key(id)
);

SELECT * FROM tb_trabalhadores;

insert into tb_trabalhadores(nome,setor,salário,idade,ativo) values ("Francisquin", "Vendas", 1900.00, 25, true);
insert into tb_trabalhadores(nome,setor,salário,idade,ativo) values ("Telma", "Contabilidade", 3650.56, 36, true);
insert into tb_trabalhadores(nome,setor,salário,idade,ativo) values ("Guilhemina", "Relações Exteriores", 5700.00, 20, true);
insert into tb_trabalhadores(nome,setor,salário,idade,ativo) values ("Jerônimo", "Atendimento ao Cliente", 1990.00, 18, true);
insert into tb_trabalhadores(nome,setor,salário,idade,ativo) values ("Euclides", "Suporte técnico", 5550.10, 45, true);

SELECT * FROM tb_trabaladores WHERE salário > 2000;
SELECT * FROM tb_trabalhadores WHERE salário < 2000;

UPDATE tb_trabalhadores SET setor = "Gerenciamento" WHERE id=1;


/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade./*