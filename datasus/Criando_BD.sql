CREATE USER 'java'@localhost INDENTIFIED BY 'Passw123!@';
GRANT ALL PRIVILEGES ON *.* TO 'java'@localhost;

CREATE DATABASE dbcancerdemama;
USE dbcancerdemama;
USE dbcancerdemama
CREATE TABLE regiao (id INT IDENTITY(1,1) PRIMARY KEY, regiao varchar(20), total_exames int )
CREATE TABLE faixa_etaria (id INT IDENTITY(1,1) PRIMARY KEY, Faixa_i int, Faixa_n int, Descricao varchar (50))
CREATE TABLE incidencia_exame (id INT IDENTITY(1,1) PRIMARY KEY, Regiao_id int, Mes int, Faixa_id int, Qnt_exames int)

Alter table incidencia_exame add constraint fk_incidencia_exame foreign key (Regiao_id) references regiao (id)
Alter table incidencia_exame add constraint fk_faixa_etaria foreign key (Faixa_id) references faixa_etaria (id)