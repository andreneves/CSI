-- BDIIIA03

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

-- exibe todas as tabelas do banco de dados selecionado
SHOW TABLES;

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

-- COUNT
-- Desejo contar todas as ocorrências da coluna idade na tabela alunos
-- somente conta o preenchido

SELECT COUNT(idade)
FROM alunos;
-- WHERE condicao;

-- AVG
-- Média dos valores não null
SELECT AVG(idade)
FROM alunos;
-- WHERE condicao;

-- SUM
-- Soma dos valores não null
SELECT SUM(idade)
FROM alunos;
-- WHERE condicao; 

-- MIN
-- Menor valor
SELECT MIN(idade)
FROM alunos;

-- MAX
-- -- Maior valor
SELECT MAX(idade)
FROM alunos;

-- LIKE
SELECT *
FROM alunos
WHERE nome LIKE '%joao%'; 


-- para teste 

insert into alunos (nome, idade, nascimento) 
values ('André Neves dos Reis', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Castro Alves', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Euclides da Cunha Neves', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Chico Buarque Reis', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Felipe Neto Neves', 10, '2011-03-04');


select * from alunos
where nome like '%Neves%';

select * from alunos
where nome like '%Reis%';

select * from alunos
where nome like '%a%';

-- coringas
-- % - representa qualquer numero ou multiplos caracteres
-- _ - um único caracter
