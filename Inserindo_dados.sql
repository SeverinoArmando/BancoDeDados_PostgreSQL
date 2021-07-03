select id_numero,banco_nome from banco
where id_numero=5;

INSERT INTO banco (id_numero,banco_nome,ativo,data_criacao) VALUES (1,'Santander',true,default);
INSERT INTO banco VALUES (2,'Santander',true,default);
INSERT INTO banco VALUES (3,'Santander',true,default);
INSERT INTO banco VALUES (4,'Santander',true,default);
INSERT INTO banco VALUES (5,'Santander',true,default);
INSERT INTO banco VALUES (6,'Santander',true,default);
INSERT INTO banco VALUES (7,'Santander',true,default);
INSERT INTO banco VALUES (8,'Santander',true,default);
INSERT INTO banco VALUES (9,'Santander',true,default);
INSERT INTO banco VALUES (10,'Santander',true,default);
INSERT INTO banco VALUES (11,'Santander',true,default);
INSERT INTO banco VALUES (12,'Santander',true,default);
INSERT INTO banco VALUES (13,'Santander',true,default);
INSERT INTO banco VALUES (14,'Santander',true,default);



select * from agencia;

INSERT INTO agencia (id_banco_numero,id_agencia_numero,ativo,data_criacao) VALUES
(1,1,true,default);
(2,2,true,default);
(3,3,true,default);
(4,4,true,default);
(5,5,true,default);
(6,6,true,default);
(7,7,true,default);
(8,8,true,default);
(9,9,true,default);
(10,10,true,default);
(11,11,true,default);
(12,12,true,default);
(13,13,true,default);
(14,14,true,default);


select * from cliente;

INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (1,'Severino Armando','severinmoarmando3@gmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (2,'Yuri Stan','yuristan7@gmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (3,'Stove Armstrong','Armstrong@hotmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (4,'Missandra Lopez','Misslopez1@yahoo.com.br',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (5,'Molly Liandra','mollystar@gmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (6,'Miguel Soares','Migule18@hotmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (7,'Mustaffah Iork','mustaffahIork12@hotmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (8,'Moneza de Jesus','monesaJS@hotmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (9,'Nadia Mogly','NadMogly001@yahoo.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (10,'Bernadeth Joph','Bernadeth@gmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (11,'Gloria Pies','GloriannePies@gmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (12,'Yuri Kontayzer Johny Matchonny','YuriKontayzer@hotmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (13,'White Mustang Lee','Mustanglee@hotmail.com',true,default);
INSERT INTO cliente (id_cliente,nome,email,ativo,data_criacao) VALUES (14,'Cleópatra Patrona','Patrona@gmail.com',true,default);


Alter table cliente_transacao rename to cliente_transacoes;

SELECT * FROM conta_corrente;

select *from agencia;

INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (5,5,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (6,6,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (7,7,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (8,8,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (9,9,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (10,10,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (11,11,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (12,12,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (13,13,0001,1,0002,true,default);
INSERT INTO conta_corrente (banco_numero,agencia_numero,conta_numero,digito,cliente_numero,ativo,data_criacao)
VALUES (14,14,0001,1,0002,true,default);

SELECT * FROM tipo_transacao;

INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (2,'Severino Armando',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (3,'Missandra Lopez',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (4,'White Mustang Lee',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (5,'Cleópatra Patrona',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (7,'Bernadeth Joph',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (8,'Nadia Mogly',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (9,'Miguel Soares',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (10,'Molly Liandra',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (11,'Moneza de Jesus',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (12,'Yuri Kontayzer Jonhy Matchonny',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (13,'Mustaffah Iork',true,default);
INSERT INTO tipo_transacao (id_transacao,nome,ativo,data_criacao) VALUES (14,'Bernadeth Joseph',true,default);
