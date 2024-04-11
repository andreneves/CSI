-- Exercícios JOIN

-- create table
create table alunos (
  id int(11) primary key auto_increment,
  nome varchar(255) not null,
  nascimento date
);


create table turmas (
  id int(11) primary key auto_increment,
  nome varchar(255) not null,
  turno enum('manha', 'tarde', 'noite')
);

create table aluno_turma (
  id int(11) primary key auto_increment,
  aluno_id int(11) not null,
  turma_id int(11) not null,
	foreign key (aluno_id) references alunos(id),
	foreign key (turma_id) references turmas(id)
);


insert into alunos (nome, nascimento) values ('André Neves', '2000-01-08');
insert into alunos (nome, nascimento) values ('Henrique Silva', '2001-03-10');
insert into alunos (nome, nascimento) values ('Everton Moraes', '2002-07-05');
insert into alunos (nome, nascimento) values ('Luciano Francisco', '2004-08-12');
insert into alunos (nome, nascimento) values ('Evelin Souza', '2001-03-23');
insert into alunos (nome, nascimento) values ('Nathalia Andrade', '2002-12-28');
insert into alunos (nome, nascimento) values ('Julia Santos', '2003-02-12');

insert into turmas (nome, turno) values ('Manhã A', 'manha');
insert into turmas (nome, turno) values ('Manhã B', 'manha');
insert into turmas (nome, turno) values ('Tarde A', 'tarde');
insert into turmas (nome, turno) values ('Tarde B', 'tarde');
insert into turmas (nome, turno) values ('Noite A', 'noite');
insert into turmas (nome, turno) values ('Noite B', 'noite');

insert into aluno_turma (aluno_id, turma_id) values (1, 6);
insert into aluno_turma (aluno_id, turma_id) values (2, 5);
insert into aluno_turma (aluno_id, turma_id) values (3, 4);
insert into aluno_turma (aluno_id, turma_id) values (4, 3);
insert into aluno_turma (aluno_id, turma_id) values (5, 2);
insert into aluno_turma (aluno_id, turma_id) values (6, 1);
insert into aluno_turma (aluno_id, turma_id) values (7, 6);
insert into aluno_turma (aluno_id, turma_id) values (1, 5);
insert into aluno_turma (aluno_id, turma_id) values (2, 4);
insert into aluno_turma (aluno_id, turma_id) values (3, 3);
insert into aluno_turma (aluno_id, turma_id) values (4, 2);
insert into aluno_turma (aluno_id, turma_id) values (5, 1);

-- 1) Retornar todos os alunos do turno 'noite'



-- 2) Retornar todos os alunos da turma 'Tarde A'



-- 3) Retornar as turmas do aluno 'André Neves'



-- 4) Retornar todas as turmas dos alunos que tenham nascido depois de 2001


