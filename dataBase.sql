CREATE DATABASE majesty;
USE majesty;


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE estilo (
idEstilo INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(50)
) AUTO_INCREMENT = 100;


select * from votacao;

CREATE TABLE votacao (
fkUsuario int unique,
foreign key (fkUsuario) references usuario(id),
fkEstilo int,
foreign key (fkEstilo) references estilo(idEstilo)
);

insert into estilo (tipo) values ('Opção1'),
                                 ('Opção2'),
                                 ('Opção3'),
                                 ('Opção4');
                                 

                                 
select * from votacao;
select * from usuario;


-- qtd de estilo
select 
	estilo.tipo,
    count(fkestilo) as 'Votos'	
		from votacao 
			join estilo 
				on fkEstilo=idEstilo group by tipo;             

-- total de usuarios
select count(id) from usuario;




