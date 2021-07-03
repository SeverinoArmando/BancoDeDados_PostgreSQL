create table tb_director(
id_director int NOT NULL,
nome_director varchar(50),
PRIMARY KEY (id_director)
);

insert into tb_director values (3,'Mustafa Armstrong');

select * from tb_director;

create table  tb_filme(
id_filme int not null,
nome_filme varchar (50),
id_director int not null,
id_produtora int not null,
genero varchar(25),
PRIMARY KEY (id_filme),
foreign key (id_director) references tb_director(id_director)
);

insert into tb_filme values(1,'Django',3,2,'Faoeste/Ação'),
(2,'Avatar',2,1,'Ficção Cientifica'),
(3,'O resgate do Soldado Ryan',1,3,'Guerra');


select * from tb_filme;

drop table tb_podutora;

create table tb_produtora(
id_produtora int not null,
nome_produtora varchar(25),
primary key (id_produtora)
);
SELECT * FROM tb_filme;

insert into tb_produtora values (1,'20th century Studio'),(2,'Sony Picture'),
(3,'Paramount Picture');
alter table tb_podutora tb_produtora;

select * from tb_produtora;


alter table tb_filme
add constraint fk_id_produtora foreign key (id_produtora) references tb_produtora(id_produtora);



select * from public.tb_director inner join tb_filme
on tb_filme.id_filme=tb_director.id_director;