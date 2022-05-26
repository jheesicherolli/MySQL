CREATE DATABASE db_generation_game_online;
 USE db_generation_game_online;
 
CREATE TABLE tb_classes(
   id bigint auto_increment,
   poder varchar(25),
   ataque int,
   defesa int,
   fraqueza varchar (30),
   
   primary key(id)
);