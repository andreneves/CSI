-- BDIIIA11 - exercícios

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

-- create table
CREATE TABLE clientes (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  cpf varchar(20) NOT NULL,
  nome varchar(200) NOT NULL,
  cidade varchar(200) NOT NULL,
  email varchar(200) NOT NULL
);

CREATE TABLE solicitacoes (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(80) NOT NULL,
  data timestamp NOT NULL,
  cliente_id int(11) NOT NULL,
  CONSTRAINT FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- insert clientes
insert into clientes (cpf, nome, cidade, email) values ('123456789', 'André', 'Rio de Janeiro', 'andr@andr.com.br');
insert into clientes (cpf, nome, cidade, email) values ('234567891', 'Bruno', 'Rio de Janeiro', 'bruno@andr.com.br');
insert into clientes (cpf, nome, cidade, email) values ('345678912', 'David', 'Arraial do Cabo', 'david@andr.com.br');

-- insert solicitacoes
insert into solicitacoes (nome, data, cliente_id) values ('Mouse com defeito', NOW(), 1);
insert into solicitacoes (nome, data, cliente_id) values ('Erro na senha', NOW(), 1);
insert into solicitacoes (nome, data, cliente_id) values ('Teclado com tecla ruim', NOW(), 1);
insert into solicitacoes (nome, data, cliente_id) values ('Senha fora da validade', NOW(), 2);
insert into solicitacoes (nome, data, cliente_id) values ('Monitor com defeito', NOW(), 2);
insert into solicitacoes (nome, data, cliente_id) values ('Sumiu meu mouse', NOW(), 3);


-- 1) Crie um relatório que possua a quantidade de solicitações por usuários
-- O relatório deve conter os seguintes campos: nome do cliente, quantidade de solicitacoes



-- 2) Crie o relatório acima ordenando em ordem decrescente de solicitações



-- 3) Quantos clientes o sistema tem por cidade



-- 4) Relatório de solicitações por cidade



-- 5) Relatório com todos os clientes que fizeram mais de uma solicitação


