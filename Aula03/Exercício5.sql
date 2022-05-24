create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
tamanho varchar(10),
primary key(id)
);

insert into tb_categorias(categoria, tamanho) value ("Metálico", "Grande");
insert into tb_categorias(categoria, tamanho) value ("hidráulica", "Grande");
insert into tb_categorias(categoria, tamanho) value ("Cerâmicos", "Grande");
insert into tb_categorias(categoria, tamanho) value ("hidráulica", "medio");
insert into tb_categorias(categoria) value ("outros");

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2) not null,
quantidade int(10),
comprou boolean,
categorias_id bigint,
primary key(id),
foreign key(categorias_id) references tb_categorias(id)
);

insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("barra", 88.99, 14, true, 1);
insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("piso", 188.99, 76, true, 3);
insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("registro", 58.99, 25, false, 4);
insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("tintas", 258.99, 71, true, 5);
insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("Tubos", 78.99, 58, false, 2);
insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("chave", 48.99, 36, true, 1);
insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("refratários", 88.99, 28, false, 3);
insert into tb_produtos(nome, preco, quantidade, comprou, categorias_id) value ("Caixa d'agua", 140.99, 14, true, 2);

select * from tb_produtos;

select nome, preco, categorias_id from tb_produtos where preco > 100;

select * from tb_produtos where preco between 70 and 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;

-- Trazendo todos os produtos da categoria Hidráulica:
select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id where categorias_id = 2 or categorias_id = 4;
