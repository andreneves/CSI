-- BDIIIA04

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
insert into alunos (nome, idade, nascimento) values ('leo', 10, '2010-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', 11, '2009-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', 13, '2007-05-12');
insert into alunos (nome, idade, nascimento) values ('joao', null, null);
insert into alunos (nome, idade, nascimento) values ('joao', 14, '2006-07-05');


-- BETWEEN
SELECT * FROM alunos
WHERE idade BETWEEN 11 AND 13;

-- NOT BETWEEN
SELECT * FROM alunos
WHERE idade NOT BETWEEN 11 AND 13;


-- BETWEEN DATA
SELECT * FROM alunos
WHERE nascimento BETWEEN '2007-05-12' AND '2010-03-04';


-- ALIAS COLUMN
SELECT nome AS nome_cliente
FROM alunos;


-- ALIAS TABLE
SELECT *
FROM alunos AS a; 


-- WHERE IN
-- Retorna todos os registros com referência dentro da listagem
SELECT * FROM alunos
WHERE nome IN ('leo', 'juju', 'fred');


