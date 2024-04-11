-- BDIIIA07

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

-- create table
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `alugueis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);

-- insert 
insert into vendas (nome, cidade) values ('venda 1', 'Rio de Janeiro');
insert into vendas (nome, cidade) values ('venda 2', 'São Paulo');
insert into vendas (nome, cidade) values ('venda 3', 'Rio de Janeiro');

insert into alugueis (nome, cidade) values ('aluguel 1', 'São Paulo');
insert into alugueis (nome, cidade) values ('aluguel 2', 'Belo Horizonte');
insert into alugueis (nome, cidade) values ('aluguel 3', 'Rio de Janeiro');

-- select *
SELECT * from vendas;

SELECT * from alugueis;


-- UNION
-- O operador UNION é usado para combinar o conjunto de resultados de duas ou mais instruções SELECT.
-- Devem respeitar a mesma ordem, número e tipo de colunas

-- UNION vem com valores não duplicados (tipo distinct)
SELECT cidade from vendas
UNION
SELECT cidade from alugueis;


-- UNION ALL vem com valores duplicados
SELECT cidade from vendas
UNION ALL
SELECT cidade from alugueis;

-- UNION com  where, etc.
SELECT cidade from vendas
WHERE id >= 2
UNION
SELECT cidade from alugueis
WHERE id >= 2
ORDER BY cidade ASC;


-- union com where, etc. exemplo com like
select cidade from vendas
where cidade LIKE '%nei%'
union
select cidade from alugueis
where cidade LIKE '%nei%'
order by cidade ASC;
