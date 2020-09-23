-- Extensao de script SQL e .sql

/*Comentario*/
-- Comentario

-- Exibe todas os banco de dados criados
\l

-- criar um novo banco de dados
create database aula05_ni;

-- conectar a um banco de dados
\c aula05_ni

-- DDL

-- CHAR(11) -->    _ _ _ _ _ _ _ _ _ _ _

--VARCHAR(11) --> _ _ _ _ _ _ _ _ _ _ _

-- SALU
-- CHAR(11) -->    S A L U _ _ _ _ _ _ _

-- VARCHAR(11) --> S A L U

-- CURSO
    -- ID       NUMERICO INTEIRO
    -- NOME     CARACTERES

-- CRIANDO TABELAS

create table curso(
    id int,
    nome varchar(40)
);

-- exibe a descreve uma tabela
\d curso


-- DML

-- inserindo dados em uma tabela
insert into curso values (100, 'Analise de Sistemas');
insert into curso values (101, 'Banco de Dados');
insert into curso values (102, 'Programacao');
insert into curso values (103, 'Medicina');
insert into curso values (104, 'Direito');


-- DQL
-- consultando dados de uma tabela
select * from curso;

select id from curso;
select nome from curso;
select id, nome from curso;



-- ATUALIZAR registros

-- Sem filtro (EVITAR)
update curso
set id = 105, nome = 'Administracao';

-- Com filtro
update curso
set nome = 'Redes de Computadores'
where id = 103;




-- APAGAR registros

-- Sem filtro (EVITAR)
delete from curso;

-- Com filtro
delete from curso
where nome = 'Direito';

