create database db_escola;

use db_escola;

create table db_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int(10),
serie varchar(10),
nota decimal (6,2),
professor varchar(255),

primary key (id)
);

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("João", 17, "3ºB", 8.2, "Ademir");

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("Maria", 16, "3ºA", 6, "Marta");

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("Rafael", 17, "3ºA", 9.4, "Ademir");

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("Pedro", 15, "2ºB", 4.3, "Larissa");

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("Jessica", 16, "3ºB", 10, "Ademir");

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("Gustavo", 15, "1ºB", 5.0, "Pedro");

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("Debora", 17, "3ºA", 9.8, "Marta");

insert into db_estudantes (nome, idade, serie, nota, professor)
value ("Henrique", 17, "3ºB", 5.1, "Larissa");

select * from db_estudantes where nota >= 7;

select * from db_estudantes where nota <= 7;

update db_estudantes set nota = 8 where id = 2;

select * from db_estudantes;