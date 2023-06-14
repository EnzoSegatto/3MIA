--comando para criar banco de dados
create database lojadb;
--vai para a próxima etapa
go
--seleciona o banco de dados
use lojadb;

create table usuario(
	idusuario int identity primary key,
	nomeusuario varchar(30) not null,
	senha varchar(255) not null,
	datacriacao datetime default getDate()
);
SELECT * FROM usuario

INSERT INTO usuario(nomeusuario, senha) VALUES ('EnzoSegatto','EnzoSegatto12')
INSERT INTO usuario(nomeusuario, senha) VALUES ('Garrutus','gagus1234213@1-')
INSERT INTO usuario(nomeusuario, senha) VALUES ('Propolis','COCOLE')

create table cliente(
idcliente int identity primary key,
nomecliente varchar(50) not null,
cpf varchar(15) not null,
idade int not null,
idusuario int foreign key references usuario(idusuario)
);
SELECT * FROM cliente


INSERT INTO cliente(nomecliente,cpf,idade,idusuario) VALUES ('Enzo Segatto Camilli Dias','111.111.222-33',65,1)

INSERT INTO cliente(nomecliente,cpf,idade,idusuario) VALUES ('Garrutus Pereira','555.111.222-33',23,2)