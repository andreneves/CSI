CREATE DATABASE BDD1;
CREATE DATABASE BDD2;


use BDD1;

create table categorias (
    id int(11) primary key auto_increment,
    nome varchar(200) not null
);

insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');


use BDD2;


create table produtos (
    id int(11) primary key auto_increment,
    nome varchar(200) not null,
    valor float,
    categoria_id int(11)
);


insert into produtos (nome, valor, categoria_id) values ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) values ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) values ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) values ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) values ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) values ('cadeira', 80, 3);


select * from bdd1.categorias;
select * from bdd2.produtos;

select 
c.nome,
c.nome,
p.valor
from bdd1.categorias c
inner join bdd2.produtos p;

