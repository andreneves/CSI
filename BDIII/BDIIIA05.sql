-- BDIIIA05 - exercícios

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

-- Utilizando a estrutura acima faça as seguintes consultas:


-- 1) Selecione todos os registros da tabela alunos


-- 2) Retorne somente o nome e a idade das linhas que não tenham a idade nula


-- 3) Retorne todos os registros em ordem decrescente de nome


-- 4) Retorne o nome e a idade de somente dois registros


-- 5) Atualize o nome do registro com id = 1 para "Samuel"


-- 6) Exclua o registro com id = 3


-- 7) Selecione os registros que tenham o nome = 'Samuel' ou idade = 14


-- 8) Selecione os registros que tenham o nome = 'joao' e idade = 14


-- 9) Selecione os registros que não possuem o nome = 'joao'


-- 10) Conte todas as idades da tabela


-- 11) Recupere a média da idade dos alunos


-- 12) Some a idade dos alunos


-- 13) Selecione todos os registros que tenham em algum lugar do nome a string 'o'


-- 14) Selecione os registro com idade entre 10 e 12 anos


-- 15) Selecione os registro com idade fora da faixa de 10 e 12 anos


-- 16) Selecione os alunos com data de nascimento entre '2008-05-12' e '2011-03-04'


-- 17) Retorne o nome usando o alias nome_do_cliente

