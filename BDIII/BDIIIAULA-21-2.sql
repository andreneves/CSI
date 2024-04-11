USE bd3;

create table alunos (
	id int auto_increment primary key,
    nome varchar(200),
    idade int(3),
    nascimento date default null
);

-- select '2011-03-04';
-- select 2011-03-04;

-- insert
insert into alunos (nome, idade, nascimento) 
values ('leo', 10, '2011-03-04');
insert into alunos (nome, idade, nascimento) 
values ('juju', 11, '2010-10-08');
insert into alunos (nome, idade, nascimento) 
values ('fred', 13, '2008-05-12');
insert into alunos (nome, idade, nascimento) 
values ('joao', null, null);
insert into alunos (nome, idade, nascimento) 
values ('joao', 14, '2007-07-05');

-- selecionar todos os campos
select * from alunos;

-- Filtrar registros com campo idade nulo
select nome, idade
from alunos
where 
idade is null;

-- Filtrar registros com campo idade não nula
select nome, idade
from alunos
where 
idade is not null;

-- selecionar registros especificos
select * from alunos
where idade = 13;

/*
= igual
> maior 
>= maior ou igual
< menor
<= menor ou igual
<> ou != diferente
*/

select * from alunos
where idade != 13;

-- <> ou !=  significam diferente

-- registros ignorando duplicados
select distinct nome from alunos;

-- Ordenar o resultado de uma consulta
-- ORDER BY CAMPO ASC/DESC

-- selecionar todos os campos da tabela alunos
-- ordenando em ordem crescente por nome

select *
from alunos
where idade >= 11
order by idade desc, nome asc;

-- selecionar os alunos que tenham mais que 11 anos
-- ordenar por ordem crescente de id
-- somente os 2 primeiros
-- DICA: limit VALOR

select * from alunos
where idade > 11
order by id asc
limit 2;

-- AULA 2

-- Atualização de dados de uma tabela
/*
UPDATE NomeDaTabela
SET coluna1 = 'valor',
coluna2 = 'valor'
WHERE campo3 = 'valor';
*/

-- atualizar o aluno com id = 1 colocando 
-- o nome dele como 'Elias' e a idade = 20

update alunos
set 
nome = 'Elias',
idade = 20
where
id = 1;

UPDATE alunos 
SET
nome = 'fred' ,
idade = 13
WHERE nome = 'Fred';


TRUNCATE table alunos;

-- excluir um registro na tabela
/*
DELETE FROM NomeDaTabela
WHERE coluna = 'valor';
*/

-- exclua o registro com id = 1
delete from alunos
where id = 1;

select * from alunos;

-- delete from alunos where id > 2;

-- selecionar com base em mais de um filtro
-- operadores lógicos
-- E
select * from alunos
where nome = 'joao' AND idade = 14;

-- OU
select * from alunos
where nome = 'joao' OR idade = 11;

-- selecionar todos os registros que não tenham o nome igual a joao
select * from alunos
where NOT nome = 'joao';

-- AULA 3
-- funções nativas do mysql

-- Desejo contar todas as ocorrências 
-- da coluna idade na tabela alunos
-- COUNT
SELECT COUNT(idade)
FROM alunos
-- where idade > 12
;

-- desejo obter a média da idade dos alunos
-- AVG

SELECT AVG(idade)
FROM alunos;

/*
10
11
13

14
*/

-- desejo somar os valores da coluna idade
-- SUM
SELECT SUM(idade)
from alunos;

-- MIN
SELECT MIN(idade)
FROM alunos;

-- MAX
SELECT MAX(idade)
FROM alunos;

-- **********************

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

select * from alunos;

-- LIKE

select * from alunos
where nome like '%Neves%';

select * from alunos
where nome like '%Reis%';

select * from alunos
where nome like '%a%';


select * from solicitacoes
where protocolo like '___20210822%';

select * from solicitacoes
where protocolo like '%20210822%';

/*
'Estou reclamando pelo motivo da minha solicitacao número SOL20210822RRRRR
não ter sido respondida. Abri uma reclamacao na ouvidoria de número 
OUV20210822RRRRR...'
*/

-- XXXAAAAMMDDRRRRRR
/*
exemplo
SOL20210822RRRRR
OUV20210822RRRRR
FAL20210822RRRRR
*/

-- coringas
-- % - representa qualquer número de caracteres
-- _ - um único caracter


-- --------------------------------------------------------

-- aula 4

CREATE TABLE cores (
	id int auto_increment PRIMARY KEY,
	nome varchar(25) not null,
    rgba varchar(25) not null,
    hexadecimal varchar(6) not null,
    luminosidade int(3),
    data_criacao date
);

insert into cores (nome, rgba, hexadecimal, luminosidade, data_criacao)
values ('Amarelo', '300 345 367 0', 'f7c707', 90, '2021-08-22');
insert into cores (nome, rgba, hexadecimal, luminosidade, data_criacao)
values ('Vermelho', '310 345 255 7', 'c7f707', 10, '2021-08-23');
insert into cores (nome, rgba, hexadecimal, luminosidade, data_criacao)
values ('Branco', '255 255 255 0', 'ffffff', 70, '2021-08-24');
insert into cores (nome, rgba, hexadecimal, luminosidade, data_criacao)
values ('Amarelo2', '300 345 367 0', 'f7c707', 50, '2021-08-25');
insert into cores (nome, rgba, hexadecimal, luminosidade, data_criacao)
values ('Preto', '000 000 000 0', '000000', 100, '2021-08-26');


-- Filtrando com between 
SELECT * FROM cores
where luminosidade BETWEEN 10 and 30;

-- negação do between na luminosidade
SELECT * FROM cores
where luminosidade not BETWEEN 10 and 30;


SELECT * FROM cores
where data_criacao BETWEEN '2021-08-22' and '2021-08-25';

-- negação do between na data_criacao
SELECT * FROM cores
where data_criacao not BETWEEN '2021-08-22' and '2021-08-25';


-- ALIAS
SELECT nome AS 'nome_da_cor'
FROM cores;

-- ALIAS TABLE
SELECT *
FROM alunos AS a; 

-- INNER JOIN

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

show columns from produtos;

select * from produtos;

insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');


insert into produtos (nome, valor, categoria_id) values ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) values ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) values ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) values ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) values ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) values ('cadeira', 80, 3);

-- fazer uma tabela de preços contendo o nome da categoria, 
-- nome do produto e valor

SELECT 
	categorias.nome,
    produtos.nome,
    produtos.valor
FROM produtos
INNER JOIN categorias ON produtos.categoria_id = categorias.id;

-- ALIAS
SELECT 
	categorias.nome AS 'categoria',
    produtos.nome 	AS 'produto',
    produtos.valor 	AS 'valor'
FROM produtos
INNER JOIN categorias ON produtos.categoria_id = categorias.id;

/*
-- Atividade
-- Construir três tabelas
-- produtos
- id (pk)
- nome
- valor

-- vendas
- id (pk)
- nomeCliente

-- venda_produto
- id (pk)
- venda_id (fk)
- produto_id (fk)
*/


CREATE DATABASE bd3;

use bd3;


create table inscricoes (
	id int primary key auto_increment,
    nome varchar(200) not null,
    idade int(3) not null,
    cidade varchar(100) not null
);

insert into inscricoes (nome, idade, cidade) 
values ('Anderson', 18, 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) 
values ('Augusto', 19, 'São Paulo');
insert into inscricoes (nome, idade, cidade) 
values ('Beatriz', 17, 'Rio de Janeiro');

insert into inscricoes (nome, idade, cidade) 
values ('Carlos', 20, 'Vitória');
insert into inscricoes (nome, idade, cidade) 
values ('Evanilson', 22, 'Belo Horizonte');
insert into inscricoes (nome, idade, cidade) 
values ('Gabriel', 21, 'Rio de Janeiro');

insert into inscricoes (nome, idade, cidade) 
values ('Lino', 20, 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) 
values ('Luiz Antonio', 23, 'Recife');
insert into inscricoes (nome, idade, cidade) 
values ('Luiz Henrique', 19, 'São Paulo');

select * from inscricoes;

select * from inscricoes
where idade >= 20;

-- numero de inscritos por cidade e que tenham mais de um inscrito
SELECT cidade, count(id)
FROM inscricoes
GROUP BY cidade
HAVING count(id) > 1;

insert into vendedores (nome) values ('vendor1');
insert into vendedores (nome) values ('vendor2');
insert into vendedores (nome) values ('vendor3');

insert into vendas (nome, vendedor_id) values ('venda1', 1);
insert into vendas (nome, vendedor_id) values ('venda2', 2);
insert into vendas (nome, vendedor_id) values ('venda3', 3);
insert into vendas (nome, vendedor_id) values ('venda4', 3);
insert into vendas (nome, vendedor_id) values ('venda5', 3);
insert into vendas (nome, vendedor_id) values ('venda6', 2);
insert into vendas (nome, vendedor_id) values ('venda7', 2);
insert into vendas (nome, vendedor_id) values ('venda8', 1);
insert into vendas (nome, vendedor_id) values ('venda9', 2);

-- Desejo ordenar os vendedores começando pelo com maior número de vendas 
-- e que tenham vendido mais do que um item

select vendedores.nome, count(vendas.id) as quantidadeDeVendas
from vendedores
inner join vendas on vendas.vendedor_id = vendedores.id
group by vendedores.nome
order by count(vendas.id) DESC;

-- Desejo ordenar os vendedores começando pelo com maior número de vendas 
-- e que tenham vendido mais do que dois itens

select vendedores.nome, count(vendas.id) as quantidadeDeVendas
from vendedores
inner join vendas on vendas.vendedor_id = vendedores.id
group by vendedores.nome
HAVING count(vendas.id) > 2
order by count(vendas.id) DESC;

