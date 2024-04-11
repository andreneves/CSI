-- BDIIIA09

DROP DATABASE bd3;
CREATE DATABASE bd3;


USE bd3;

-- create table
create table inscricoes (
    id int primary key auto_increment,
    nome varchar(200) not null,
    idade int(3) not null,
    cidade varchar(100) not null
);


-- insert 
insert into inscricoes (nome, idade, cidade) values ('André', 18, 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Bruno', 19, 'São Paulo');
insert into inscricoes (nome, idade, cidade) values ('David', 20, 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Wando', 21, 'Recife');
insert into inscricoes (nome, idade, cidade) values ('Paula', 22, 'Belo Horizonte');
insert into inscricoes (nome, idade, cidade) values ('Graciela', 23, 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Renata', 24, 'Vitória');
insert into inscricoes (nome, idade, cidade) values ('Leticia', 25, 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Milena', 26, 'São Paulo');
insert into inscricoes (nome, idade, cidade) values ('Patricia', 27, 'São Paulo');

-- select *
SELECT * from inscricoes;

-- Em um select simples utilizamos o where para filtrar os valores que estão na tabela
-- exemplo:
select * from inscricoes
where idade >= 20;

-- HAVING
-- É uma condição baseada nas informações de agregação (group by).
-- Tem função semelhante a do WHERE, mas é aplicada nas funções de agregação.
-- Usada com funções de agregação como (COUNT, MAX, MIN, SUM, AVG).
-- Exemplo: Determinar a quantidade de inscritos por cidade que tenham mais de um inscrito.
SELECT cidade, COUNT(id)
FROM inscricoes
GROUP BY cidade
HAVING count(id) >= 2;


-- Ordenando de maior quantidade para menor - descrescente
SELECT cidade, COUNT(id)
FROM inscricoes
GROUP BY cidade
HAVING count(id) >= 2
ORDER BY COUNT(id) DESC;

-- É possível ser utilizada com JOIN

-- create table
CREATE TABLE vendedores (
  id int primary key auto_increment,
  nome varchar(200) NOT NULL
);

CREATE TABLE vendas (
  id int primary key auto_increment,
  nome varchar(200) NOT NULL,
  vendedor_id int(11),
  FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);

-- inserir dados
insert into vendedores (nome) values ('André');
insert into vendedores (nome) values ('Pedro');
insert into vendedores (nome) values ('João');

insert into vendas (nome, vendedor_id) values ('Venda 1', 1);
insert into vendas (nome, vendedor_id) values ('Venda 2', 1);
insert into vendas (nome, vendedor_id) values ('Venda 3', 1);
insert into vendas (nome, vendedor_id) values ('Venda 4', 2);
insert into vendas (nome, vendedor_id) values ('Venda 5', 2);
insert into vendas (nome, vendedor_id) values ('Venda 6', 3);

-- select
select * from vendedores;
select * from vendas;

-- Desejo ordenar os vendedores começando pelo com maior número de vendas 
-- e que tenham vendido mais do que dois itens
SELECT vendedores.nome, COUNT(vendas.id) AS QuantidadeDeVendas FROM vendas
INNER JOIN vendedores ON vendas.vendedor_id = vendedores.id
GROUP BY vendedores.nome
HAVING COUNT(vendas.id) > 2
ORDER BY COUNT(vendas.id) desc;

