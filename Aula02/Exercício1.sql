create database db_rh;

use db_rh;

create table tb_colaboradores (
id bigint auto_increment,
nome varchar(255) not null,
area varchar(20) not null,
idade int(10),
salario decimal(10,2) not null,
cargo varchar(35) not null,

primary key (id)
);

insert into tb_colaboradores(nome, area, idade, salario, cargo)
value ("João", "tecnologia", 25, 3809.88, "Dev");

insert into tb_colaboradores(nome, area, idade, salario, cargo)
value ("Maria", "tecnologia", 28, 2089.88, "Dev junior");

insert into tb_colaboradores(nome, area, idade, salario, cargo)
value ("Larissa", "rh", 33, 3355.88, "lider de RH");

insert into tb_colaboradores(nome, area, idade, salario, cargo)
value ("Matheus", "tecnologia", 18, 1089.88, "Estagiario Dev");

insert into tb_colaboradores(nome, area, idade, salario, cargo)
value ("Pedro", "administração", 33, 2198.88, "Auxiliar adm");

select * from tb_colaboradores where salario >= 2000;

select * from tb_colaboradores where salario <= 2000;

update tb_colaboradores set idade = 35 where id =3;

select * from tb_colaboradores;

