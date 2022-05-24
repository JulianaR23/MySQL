create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
cor varchar(10),
primary key(id)
);

insert into tb_classes(classe, cor) value ("Arqueiro", "verde");
insert into tb_classes(classe, cor) value ("Lutador", "azul");
insert into tb_classes(classe, cor) value ("hobbit", "amarelo");
insert into tb_classes(classe, cor) value ("mago", "rosa");
insert into tb_classes(classe) value ("outros");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
ataque int(10) not null,
defesa int(10) not null,
destreza int(10) not null,
classes_id bigint,
primary key(id),
foreign key (classes_id) REFERENCES tb_classes(id)
);

insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Carlos", 5500, 2000, 5000, 2);
insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Valquíria", 1000, 3000, 2000, 1);
insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Gustavo", 1500, 2000, 1500, 3);
insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Carla", 2500, 1200, 2000, 1);
insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Voldemort", 6000, 3000, 5000, 5);
insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Gandalf", 5000, 3500, 5000, 4);
insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Frodo", 5500, 3000, 5000, 2);
insert into tb_personagens (nome, ataque, defesa, destreza, classes_id) value ("Galadriel", 5000, 3000, 5000, 4);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select nome, defesa, classes_id from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id;

-- Trazendo todos personagens da classe arqueiro:
select * from tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id where classes_id = 1;