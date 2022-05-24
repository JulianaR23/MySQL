create database db_ecommerce;

use db_ecommerce;

create table db_produtos(
id bigint auto_increment,
nome_produto varchar(255) not null,
valor decimal (8,2),
categoria varchar(255) not null,
tamanho varchar(10),
quantidade int(10),

primary key (id)
);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Camisa", 29.99, "Feminino", "M", 20);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Blusa", 510.99, "Masculino", "P", 10);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Calça", 79.99, "Feminino", "46", 18);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Camisa", 58.99, "Feminino", "G", 2);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Vestido", 35.87, "Feminino", "GG", 15);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Bermuda", 39.99, "Masculino", "M", 14);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Camisa", 34.10, "Feminino", "P", 5);

insert into db_produtos(nome_produto, valor, categoria, tamanho, quantidade)
value ("Vestido", 509.99, "Feminino", "PP", 2);

select * from db_produtos where valor >= 500;

select * from db_produtos where valor <= 500;

update db_produtos set tamanho = "M" where id =4;

select * from db_produtos;




