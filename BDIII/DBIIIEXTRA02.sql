-- prova 2 bim

CREATE TABLE categorias (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(200) NOT NULL,
  PRIMARY KEY (id)
);

create table publicacoes (
	id int auto_increment primary key,
    titulo varchar(100) not null,
    conteudo text not null,
    categoria_id int not null,
    foreign key (categoria_id) references categorias (id)
);

create table comentarios (
	id int auto_increment primary key,
    titulo varchar(100) not null,
    conteudo text not null,
    publicacao_id int not null,
    foreign key (publicacao_id) references publicacoes (id)
);


-- mais simples


create table publicacoes (
	id int auto_increment primary key,
    titulo varchar(100) not null,
    conteudo text not null
);

create table comentarios (
	id int auto_increment primary key,
    titulo varchar(100) not null,
    conteudo text not null,
    publicacao_id int not null,
    foreign key (publicacao_id) references publicacoes (id)
);


-- 01 v e f

SELECT  publicacoes.titulo, 
	comentarios.titulo, 
    comentarios.conteudo
FROM publicacoes
inner join comentarios ON comentarios.publicacao_id = publicacoes.id;


