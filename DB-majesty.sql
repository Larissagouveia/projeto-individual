CREATE DATABASE majesty;

USE majesty;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE bolsas (
idBolsas INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(50)
) AUTO_INCREMENT = 100;

CREATE TABLE votacao (
fkUsuario int,
foreign key (fkUsuario) references usuario(id),
fkBolsas int,
foreign key (fkBolsas) references bolsas(idBolsas)
);

insert into bolsas (tipo) values ('bolsa1'),
                                 ('bolsa2'),
                                 ('bolsa3'),
                                 ('bolsa4');


