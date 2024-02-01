--criar banco de dados
create database samuel_veiculos;

-- abrir o bd
use samuel_veiculos;

-- criar tabela vendedor
 create table vendedor(
    -> id int not null auto_increment,
    -> nome varchar(100),
    -> primary key(id)
    -> );

    --inserir um novo vendedor
     insert into vendedor(nome) value('John');

     --excluir todos os vendedores com id maior que 2
     delete from vendedor wher id > 2;

     --lista/selecionar todos os vendedpr
     select * from vendedores;

     --atualizar o nome vendedor de id 2 para 'john'
     update vendedor set nome='john' where id = 2;