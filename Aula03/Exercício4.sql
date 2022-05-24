create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
porcao varchar(255),
primary key(id)
);

insert into tb_categorias(tipo, porcao) value ("Frutas", "grande");
insert into tb_categorias(tipo, porcao) value ("Legumes", "media");
insert into tb_categorias(tipo, porcao) value ("verduras", "grande");
insert into tb_categorias(tipo, porcao) value ("temperos", "pequena");
insert into tb_categorias(tipo, porcao) value ("ovos", "media");

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
quantidade int(10),
preco decimal (6,2),
estoque int(10),
categorias_id bigint,
primary key(id),
foreign key(categorias_id) references tb_categorias(id)
);

insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Maçã", 55, 25.59, 108,1);
insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Cebolas", 75, 55.98, 200,2);
insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Araçá-boi", 80, 70.59, 150,1);
insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Alface", 77, 30.59, 788,3);
insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Alecrim", 25, 45.59, 196,4);
insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Agrião", 105, 110.55, 508,3);
insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Ovo Branco", 55, 55.59, 108,5);
insert into tb_produtos(nome, quantidade, preco, estoque, categorias_id) value ("Manga", 15, 27.59, 108,1);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 50 and 150;

select nome, preco, categorias_id from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;

-- Trazendo todos os produtos da categoria frutas:
select nome, preco, tipo from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id where categorias_id = 1;



