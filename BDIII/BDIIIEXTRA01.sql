BDIIIEXTRA01


FOREIGN KEY
• Foreign key significa chave estrangeira. Uma chave estrangeira diz respeito a uma chave primária que está sendo referenciada em outra tabela.

Sintaxe:
Foreign key (campo) references tabela tabela(chave primária) ;

onde:
foreign key --> palavra reservada que quer dizer chave estrangeira
campo --> é o campo criado na tabela para receber o valor da chave estrangeira e portanto, deve ser do mesmo tipo da chave primária da tabela referida.
references --> palavra reservada que quer dizer faz referência.
tabela - o nome da tabela que possui a chave primária que se fará referência
chave primária - o nome do campo chave primária da tabela referida.


FOREIGN KEY - ON DELETE/ ON UPDATE

• Uma chave estrangeira é declarada na criação da tabela (CREATE TABLE) ou posteriormente através do comando ALTER TABLE. Em ambos os casos, podemos dizer o que fazer com ela caso a tabela seja excluída.

Sintaxe:
ON DELETE – na exclusão. Indica que caso a exclusão do dado na tabela cuja o campo chave estrangeira faça referencia seja realizada.
ON UPDATE – na atualização. Indica que caso a atualização do dado na tabela cuja o campo chave estrangeira faça referencia seja atualizada.


CASCADE – caso exclua ou atualize a linha da tabela pai, será automaticamente excluída ou atualizada a linha correspondente na tabela filha.
SET NULL – caso exclua ou atualize a linha da tabela pai, será atribuído o valor NULL a linha correspondente na tabela filha.
RESTRICT – rejeita a deleção ou atualização da tabela pai, porque existe a tabela filha. Este é o DEFAULT (padrão), ou seja, caso você não informe esse valor é o que vale.
NO ACTION – equivalente a RESTRICT. O servidor MySQL rejeita a operação de exclusão ou atualização para a tabela pai se houver um valor de chave estrangeira relacionado na tabela referenciada.


Exemplo:

CREATE TABLE APARTAMENTO (
	NUMERO INT NOT NULL PRIMARY KEY AUTO-INCREMENT,
	QUARTOS INT, SALAS INT, BANHEIROS INT, VARANDAS, INT,
	PRORIETARIO CHAR(11), DESCRICAO VARCHAR(30),
	FOREIGN KEY (PROPRIETARIO) REFERENCES PROPRIETARIO(CPF)
	ON DELETE CASCADE ON UPDATE CASCADE
);


