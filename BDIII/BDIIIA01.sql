-- BDIIIA01

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

-- DROP TABLE IF EXISTS alunos;

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3),
    nascimento date DEFAULT NULL
);

-- insert
insert into alunos (nome, idade, nascimento) values ('leo', 10, '2011-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', 11, '2010-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', 13, '2008-05-12');
insert into alunos (nome, idade, nascimento) values ('joao', null, null);
insert into alunos (nome, idade, nascimento) values ('joao', 14, '2007-07-05');
-------------------


-- Selecionar todos os campos de uma tabela
select * 
from alunos;

-- Filtrar o resultado por campos nulos e não nulos;
select nome, idade 
from alunos 
where idade is null;

select nome, idade 
from alunos 
where idade is not null; 

-- Selecionar os registros ignorando os registros duplicados
select distinct nome 
from alunos;

-- Ordenar o resultado de uma consulta
select * 
from alunos 
order by nome asc;

-- Limitar o número de registros retornado por uma consulta
select * 
from alunos 
limit 3;

