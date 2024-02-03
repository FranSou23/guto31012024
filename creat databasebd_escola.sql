create database bd_escola;
use bd_escola;

create table alunos(
    id integer not null auto_increment,
    nome varchar(100),
    telefone varchar(20),
    email varchar(100),
    data_nascimento datetime,
    primary key(id)
);
create table estado(
    id integer not null auto_increment,
    nome varchar(50),
    Sigla varchar(3),
    primary key(id)
);

insert into estado(nome, sigla) value('São Paulo','Sp');
--inserir
select * from estado;
-- para ver dados da tabela
update estado set sigla='Sp' where id = 1;
--atualizar
delete from estado where id = 2;
-- apaga o id
insert into estado(nome, sigla) value('Acre','Ac');

source c:\sql\estados.sql
--pasta do computador
select * from estados_novo order by Regiao;
-- selecionar por ordem(região(sempre do menor p/ maior)) para ser alcontrario (colocar "desc;" no final)
-- Exe: select * from estados_novo order by Regiao desc;