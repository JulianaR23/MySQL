create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias (
id bigint auto_increment,
categoria varchar(255) not null,
tipo varchar (255) not null,
primary key (id)
);

insert into tb_categorias (categoria, tipo) value ("grande", "Salgada");
insert into tb_categorias (categoria, tipo) value ("media", "Salgada");
insert into tb_categorias (categoria, tipo) value ("pequena", "Salgada");
insert into tb_categorias (categoria, tipo) value ("grande", "Doce");
insert into tb_categorias (categoria, tipo) value ("media", "Doce");

select * from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255),
preco decimal(6,2),
bordaRech boolean,
pronta boolean,
categorias_id bigint,

primary key(id),
foreign key (categorias_id) references tb_categorias(id)
);

insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Calabresa", 48.50, true, false,2);
insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Frango", 40.20, false, true,3);
insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Doce de leite", 50.50, true, false,4);
insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Mussarela", 50.90, true, false,2);
insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Marguerita", 60.50, false, true,1);
insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Brigadeiro", 39.98, true, true,5);
insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Romeu e Julieta", 50.50, false, false,4);
insert into tb_pizzas(sabor, preco, bordaRech, pronta, categorias_id) value("Portuguesa", 88.50, true, true,1);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50 and 100;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id;

-- Trazendo todas as pizzas doces:
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id where categorias_id = 4 or categorias_id = 5;


