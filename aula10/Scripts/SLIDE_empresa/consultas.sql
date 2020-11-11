/*Exibir todas as informacoes de todos os empregados*/
SELECT * FROM EMPREGADO;

/*Exibir o primeiro e ultimo nome de todos os empregados*/
SELECT PRIM_NOME, ULT_NOME FROM EMPREGADO;

SELECT PRIM_NOME, ULT_NOME, SALARIO FROM EMPREGADO;

/*===================================================================================*/
/*Escrevendo expressoes*/

/*Exibir o nome completo de todos os empregados e o salario anual*/
SELECT PRIM_NOME || ' ' || ULT_NOME, SALARIO * 12 FROM EMPREGADO;

/*Criando ALIAS*/
/*Exibir o nome completo de todos os empregados com o cabecalho (Nome completo) e o salario anual com o cabecalho (Salario Anual)*/
SELECT PRIM_NOME || ' ' || ULT_NOME AS "Nome completo", SALARIO * 12 AS "Salario anual" FROM EMPREGADO;

SELECT PRIM_NOME AS "Nome", ULT_NOME AS "Sobrenome", SALARIO FROM EMPREGADO;

/*===================================================================================*/
/*Distinct*/
/*Exibir os cargos unicos dos funcionarios*/
SELECT DISTINCT CARGO FROM EMPREGADO;

SELECT DISTINCT CARGO, SALARIO FROM EMPREGADO;
/*===================================================================================*/
/*Filtrando linhas WHERE*/
SELECT * FROM EMPREGADO;

/*Exibir todos os empregados que possuem ID maior que 3*/
SELECT * FROM EMPREGADO WHERE ID > 3;

/*Exibir todos os empregados que recebem 4000*/
SELECT * FROM EMPREGADO WHERE SALARIO = 4000;

/*Exibir todos os empregados que não são Vendedores*/
SELECT * FROM EMPREGADO WHERE CARGO != 'Vendedor';
SELECT * FROM EMPREGADO WHERE CARGO <> 'Vendedor';

/*Exibir o primeiro nome, e cargo dos empregados com sobrenome Ugarte*/
SELECT PRIM_NOME, CARGO FROM EMPREGADO WHERE ULT_NOME = 'UGARTE';
SELECT PRIM_NOME, CARGO FROM EMPREGADO WHERE ULT_NOME = 'ugarte';
SELECT PRIM_NOME, CARGO FROM EMPREGADO WHERE ULT_NOME = 'Ugarte';

-- UPPER --> MAIUSCULA	
-- LOWER --> MINUSCULA
SELECT PRIM_NOME, ULT_NOME, CARGO FROM EMPREGADO WHERE UPPER(ULT_NOME) = 'UGARTE';
SELECT PRIM_NOME, ULT_NOME, CARGO FROM EMPREGADO WHERE LOWER(ULT_NOME) = 'ugarte';

/*===================================================================================*/
/*Trabalhando com datas*/
SELECT * FROM EMPREGADO;

/*Exibir os empregados contratados no dia 07/04/2010*/
SELECT * FROM EMPREGADO WHERE DT_ADMISSAO = '07-04-2010';
SELECT * FROM EMPREGADO WHERE DT_ADMISSAO = '07/04/2010';
SELECT * FROM EMPREGADO WHERE DT_ADMISSAO = '07/04/10';

/*Exibir os empregados contratados antes de 2010*/
SELECT * FROM EMPREGADO WHERE DT_ADMISSAO < '01/01/2010';

/*===================================================================================*/
/*Operadores logicos*/
/*Exibir todos os empregados que foram contratados depois de 2008 E que recebem salario maior que 10000*/
SELECT * FROM EMPREGADO WHERE DT_ADMISSAO > '01-01-2009' AND SALARIO > 10000;

/*Exibir todos os empregados que foram contratados depois de 2008 OU que recebem salario maior que 10000*/
SELECT * FROM EMPREGADO WHERE DT_ADMISSAO > '01-01-2009' OR SALARIO > 10000;

/*Operadores relacionais*/
/*IN*/
/*Exibir todos os empregados que trabalham no departamento 10 ou 30*/

SELECT * FROM EMPREGADO WHERE ID_DEPTO = 10 OR ID_DEPTO = 30;

SELECT * FROM EMPREGADO WHERE ID_DEPTO IN (10, 30);

/*Exibir todos os empregados que NãO trabalham no departamento 10 ou 30*/
SELECT * FROM EMPREGADO WHERE ID_DEPTO != 10 AND ID_DEPTO != 30;

SELECT * FROM EMPREGADO WHERE ID_DEPTO NOT IN (10, 30);

/*BETWEEN*/
/*Exibir todos os empregados que possuem um salario entre 8000 e 19500*/
SELECT * FROM EMPREGADO WHERE SALARIO >= 8000 AND SALARIO <= 19500;

SELECT * FROM EMPREGADO WHERE SALARIO BETWEEN 8000 AND 19500;

/*Exibir todos os empregados que NÃO possuem um salario entre 8000 e 19500*/
SELECT * FROM EMPREGADO WHERE SALARIO < 8000 OR SALARIO > 19500;

SELECT * FROM EMPREGADO WHERE SALARIO NOT BETWEEN 8000 AND 19500;

/*Exibir todos os empregados que foram contrados em 2009*/
SELECT * FROM EMPREGADO WHERE DT_ADMISSAO >= '01-01-2009' AND DT_ADMISSAO <= '31-12-2009';

SELECT * FROM EMPREGADO WHERE DT_ADMISSAO BETWEEN '01-01-2009' AND '31-12-2009';


