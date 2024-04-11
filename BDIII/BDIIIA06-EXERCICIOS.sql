DROP DATABASE bd3;
CREATE DATABASE bd3;


USE bd3;

-- create table
create table categorias (
	id int(11) primary key auto_increment,
    nome varchar(200) not null
);

create table produtos (
  id int(11) primary key auto_increment,
  nome varchar(200) not null,
  valor float,
  categoria_id int(11),
	foreign key (categoria_id) references categorias(id)
);

-- insert categorias 
insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');

-- insert produtos 
insert into produtos (nome, valor, categoria_id) values ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) values ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) values ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) values ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) values ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) values ('cadeira', 80, 3);


-- Exercícios
-- 1) Retorne o nome da categoria onde esta cadastrado o produto 'mouse'.


-- 2) Retorne todos os produtos cadastrados na categoria 'escritorio'


-- 3) Retorne todas as categorias que tenham produtos com valor maior ou igual a 80


-- 4) Retorne uma listagem em ordem alfabética contendo a categoria, nome do produto e valor
-- em ordem alfabética de categoria e depois produto





