create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
composicao varchar(255),
primary key(id)
);

insert into tb_categorias(tipo, composicao) value("Genérico", "Comprimido");
insert into tb_categorias(tipo, composicao) value("Similar", "Gotas");
insert into tb_categorias(tipo, composicao) value("Manipulado", "Comprimido");
insert into tb_categorias(tipo, composicao) value("Refência", "Gotas");
insert into tb_categorias(tipo, composicao) value("Fitoterápico", "Comprimido");

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2) not null,
estoque int(10),
comprou boolean,
categorias_id bigint,
primary key(id),
foreign key (categorias_id) references tb_categorias(id)
);

insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Dipirona", 24.99, 20, true, 1);
insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Cimegrip", 14.80, 40, true, 1);
insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Bupropiona", 84.99, 10, false, 3);
insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Espinheira Santa", 64.99, 5, true, 5);
insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Torsilax", 104.99, 80, false, 2);
insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Biotina", 10.00, 36, false, 3);
insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Garra do Diabo", 20.99, 22, true, 5);
insert into tb_produtos(nome, preco, estoque, comprou, categorias_id) value ("Plantago", 44.99, 2, true, 5);

select * from tb_produtos;

select nome, preco, categorias_id from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 5 and 60;

select nome, preco, categorias_id from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;

-- Trazendo todos os remédios fitoterápicos:
select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id where categorias_id = 5;




 