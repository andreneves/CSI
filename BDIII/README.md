# BDIII
> Banco de dados III

## BDIII00

# Sistema Gerenciador de Banco de Dados - SGBD

`SGBD :: MySql` : <https://www.mysql.com/>

`SGBD :: MySql 8.0 Reference Manual` : <https://dev.mysql.com/doc/refman/8.0/en/>

# Ferramentas

`XAMPP` : <https://www.apachefriends.org/pt_br/index.html>

`Workbench` : <https://www.mysql.com/products/workbench/>


## BDIIA01
* CREATE DATABASE
* DROP DATABASE

# Revisão tipo de dados
`Data types` : <https://dev.mysql.com/doc/refman/8.0/en/data-types.html>


![](https://github.com/andreneves/BDII/blob/master/imagens/tipos_de_dados-tipos_primitivos.jpg)

![](https://github.com/andreneves/BDII/blob/master/imagens/tipos_de_dados-tipos_primitivos2.jpg)

![](https://github.com/andreneves/BDII/blob/master/imagens/tipos_de_dados-tipos_primitivos3.jpg)


# Criar usuário do banco de dados

CREATE USER 'novousuario'@'localhost' IDENTIFIED BY 'password';

Infelizmente, nesse momento o novousuario não tem permissão para fazer nada com as bases de dados. Na verdade, se o novousuario tentar fazer login (com a senha password), ele não será capaz de chegar ao shell do MySQL.

Portanto, a primeira coisa a fazer é fornecer ao usuário o acesso às informações que ele vai precisar.

# Criar privilégios

GRANT ALL PRIVILEGES ON * . * TO 'novousuario'@'localhost';

Os asteriscos neste comando referem-se ao banco de dados e à tabela (respectivamente) que eles podem acessar - este comando específico permite ao usuário ler, editar, executar e realizar todas as tarefas em todas as bases de dados e tabelas.

Uma vez finalizadas as permissões que você quer definir para os seus novos usuários, certifique-se sempre de recarregar todos os privilégios.

# Fazer com que suas alterações entrem em vigor.
FLUSH PRIVILEGES;


## BDIIIA01
* CREATE DATABASE
* DROP DATABASE
* DROP TABLE
* CREATE TABLE

* INSERT INTO
* SELECT
* SELECT DISTINCT
* WHERE
* IS NULL e IS NOT NULL
* DISTINCT
* ORDER BY
* LIMIT

## BDIIIA02
UPDATE
DELETE
AND
OR
NOT


## BDIIIA03
COUNT
AVG
SUM
LIKE
WILDCARDS - coringas *

## BDIIIA03
BETWEEN
ALIAS




SELECT TOP

MIN e MAX



IN / NOT IN

JOINS *
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL JOIN
SELF JOIN
UNIONGROUP BY
HAVING *
EXISTS
ANY , ALL
SELECT INTO
INSERT INTO SELECT
CASE
NULL FUNCTIONS
STORED PROCEDURES
COMMENTS
UNION ?

DEFALT *

MySQL Functions
- String
- Numeric 
- Date
- Advanced