Setting environment for using XAMPP for Windows.
francislene.msouza@AME0635272W10-1 c:\xampp
# mysql -h localhost -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 11
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database tabelas;
Query OK, 1 row affected (0.004 sec)

MariaDB [(none)]> use tabelas;
Database changed
MariaDB [tabelas]> create tables usuario(
    -> codigo integer
    -> nome varchar(100),
    -> cidade varcha(100),
    -> estado varchar(2),
    -> data_nascimento datatime,
    -> tipo varchar(50)
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tables usuario(
codigo integer
nome varchar(100),
cidade varcha(100),
estado ...' at line 1
MariaDB [tabelas]> create tables usuario(
    ->  codigo integer,
    -> nome varchar(100),
    ->     -> cidade varcha(100),
    ->     -> estado varchar(2),
    ->     -> data_nascimento datatime,
    ->     -> tipo varchar(50)
    ->     -> primary key(codigo)
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tables usuario(
 codigo integer,
nome varchar(100),
    -> cidade varcha(100)...' at line 1
MariaDB [tabelas]> create tables usuario(
    -> codigo integer,
    -> nome varchar(100),
    -> cidade varcha(100),
    -> estado varchar(2),
    -> data_nascimento datatime,
    -> tipo varchar(50)
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tables usuario(
codigo integer,
nome varchar(100),
cidade varcha(100),
estado...' at line 1
MariaDB [tabelas]> create tables usuario(
    -> codigo int not null auto_increment,
    ->  codigo integer,
    -> nome varchar(100),
    -> cidade varcha(100),
    -> estado varchar(2),
    -> data_nascimento datatime,
    -> tipo varchar(50),
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tables usuario(
codigo int not null auto_increment,
 codigo integer,
nome var...' at line 1
MariaDB [tabelas]> create table usuario(
    -> codigo int not null auto_increment,
    -> codigo integer,
    -> nome varchar(100),
    -> cidade varcha(100),
    -> estado varchar(2),
    -> data_nascimento datatime,
    -> tipo varchar(50),
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(100),
estado varchar(2),
data_nascimento datatime,
tipo varchar(50),
primary...' at line 5
MariaDB [tabelas]> create table usuario(
    -> codigo int not null auto_increment,
    -> codigo integer,
    ->  nome varchar(100),
    ->  cidade varchar(100),
    -> estado varchar(2),
    -> data_nascimento datatime,
    -> tipo varchar(50),
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
tipo varchar(50),
primary key(codigo)
)' at line 7
MariaDB [tabelas]> create table usuario(
    -> codigo int not null auto_increment,
    -> nome varchar(100),
    -> cidade varchar(100),
    -> estado varchar(2),
    -> data_nascimento datatime,
    -> tipo varchar(50),
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
tipo varchar(50),
primary key(codigo)
)' at line 6
MariaDB [tabelas]> create table usuario(
    -> codigo int not null auto_increment,
    -> nome varchar(100),
    -> cidade varchar(100),
    -> estado varchar(2),
    -> data_nascimento datetime,
    -> tipo varchar(50),
    -> primary key(codigo)
    -> );
Query OK, 0 rows affected (0.016 sec)

MariaDB [tabelas]> create table viagem(
    -> codigo int not null auto_increment,
    -> data_viagem datetime,
    -> motorista integer,
    -> passageiro integer,
    -> origem varchar(100),
    -> destino varchar(100)
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(codigo)
)' at line 8
MariaDB [tabelas]> create table viagem(
    -> codigo int not null auto_increment,
    -> data_viagem datetime,
    -> motorista integer,
    -> passageiro integer,
    -> origem varchar(100),
    -> destino varchar(100),
    -> primary key(codigo)
    -> );
Query OK, 0 rows affected (0.016 sec)

MariaDB [tabelas]> create table veiculo(
    -> codigo int not null auto_increment,
    -> modelo varchar,
    -> marca varchar,
    -> ano integer,
    -> cor varchar(50),
    -> primary key(codigo)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
marca varchar,
ano integer,
cor varchar(50),
primary key(codigo)
)' at line 3
MariaDB [tabelas]> create table veiculo(
    -> codigo int not null auto_increment,
    -> modelo varchar(100),
    -> marca varchar(50),
    -> ano integer,
    -> cor varchar(50),
    -> primary key(codigo)
    -> );
Query OK, 0 rows affected (0.013 sec)

MariaDB [tabelas]> desc usuario;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| codigo          | int(11)      | NO   | PRI | NULL    | auto_increment |
| nome            | varchar(100) | YES  |     | NULL    |                |
| cidade          | varchar(100) | YES  |     | NULL    |                |
| estado          | varchar(2)   | YES  |     | NULL    |                |
| data_nascimento | datetime     | YES  |     | NULL    |                |
| tipo            | varchar(50)  | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
6 rows in set (0.013 sec)

MariaDB [tabelas]> select * from usuario;
Empty set (0.000 sec)

MariaDB [tabelas]> insert into usuario(nome , cidade , estado , data_nascimento , tipo)
    -> values ("frederica piragibe" , "americana" , "sp" , 1990/10/20 , "motorista");
Query OK, 1 row affected, 1 warning (0.008 sec)

MariaDB [tabelas]>


