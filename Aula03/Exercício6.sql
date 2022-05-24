create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255), 
tempo varchar(100),
primary key(id)
);

insert into tb_categorias (categoria, tempo) value ("tecnologia", "curta duração");
insert into tb_categorias (categoria, tempo) value ("saúde", "curta duração");
insert into tb_categorias (categoria, tempo) value ("administração", "curta duração");
insert into tb_categorias (categoria, tempo) value ("tecnologia", "longa duração");
insert into tb_categorias (categoria, tempo) value ("saúde", "longa duração");

select * from tb_categorias;

create table tb_cursos(
id bigint auto_increment,
nomeAluno varchar(255) not null,
idade int(10),
curso varchar(25),
preco decimal (6,2) not null,
categorias_id bigint,
primary key(id),
foreign key(categorias_id) references tb_categorias(id)
);

insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Gustavo", 25, "Java Completo", 600.99, 4);
insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Gabriela", 27, "enfermagem", 489.22, 2);
insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Marcia", 33, "Java Completo", 600.99, 4);
insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Camila", 17, "Java Fundamentos", 569.78, 1);
insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Pedro", 21, "Adm completo", 578.99, 3);
insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Henrique", 30, "Enfermagem", 489.22, 2);
insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Debora", 26, "Java Completo", 600.99, 4);
insert into tb_cursos(nomeAluno, idade, curso, preco, categorias_id) value ("Alfredo", 22, "Medicina", 1100.99, 5);

select * from tb_cursos;

select * from tb_cursos where preco > 500.00;

select * from tb_cursos where preco between 600 and 1000;

select * from tb_cursos where curso like "%j%";

select * from tb_cursos inner join tb_categorias on tb_cursos.categorias_id = tb_categorias.id;

-- Trazendo todos os cursos da categoria tecnologia:
select * from tb_cursos inner join tb_categorias on tb_cursos.categorias_id = tb_categorias.id where categorias_id = 1 or categorias_id = 4;

