-- Uma empresa requer armazenar os dados de seus clientes, 
-- esses clientes são proprietarios de bens,
-- cujo o armazenamento das informações tbm sao requeridos. 
-- Dados dos proprietario: nome, email, sexo e endereço. 
-- Dados dos bens: nome, tipo(movel ou imovel) e valor. 
-- Cada proprietario pode nao ter bens ou ter N bens, 
-- ja um bem, obrigatoriamente deve ser de um, e somente um proprietario.

-- Proprietario			-- Endereco				-- Bens
	-- nome					-- rua					-- nome
	-- email				-- cidade				-- tipo
	-- sexo					-- estado				-- valor
    -- endereco

-- Cria o banco de dados aula06_ni
CREATE DATABASE aula06_ni;

-- Conecta ao banco de dados aula06_ni
\c aula06_ni;

-- ***REGRA***
    -- TODA TABELA DEVE POSSUIR UMA CHAVE PRIMARIA

    -- masculino ==> M
    -- feminino  ==> F

-- RESTRIÇÃO ==> CONSTRAINT
CREATE TABLE proprietario(
    id INTEGER PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    endereco VARCHAR(60) NOT NULL,
    sexo CHAR(1) CHECK(sexo='F' OR sexo='M') NOT NULL
);

-- Exibe a descricao da tabela
\d proprietario;

INSERT INTO proprietario VALUES (101, 'Carlos', 'carlos@email.com', 'Rua A, 123', 'M');

INSERT INTO proprietario VALUES (102, 'Maria', 'maria@email.com','Rua POO, 100', 'F');
INSERT INTO proprietario VALUES (103, 'Gina', 'gina@email.com', 'Rua KWY, 30', 'F');
INSERT INTO proprietario VALUES (104, 'Mauro', 'mauro@email.com', 'Rua XYZ, 777', 'M');

-- Exibe todas as tabelas de uma database
\dt

-- Consulta os dados de uma tabela
SELECT * FROM proprietario;


CREATE TABLE bens(
    id INTEGER PRIMARY KEY, 
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(6) CHECK(tipo='movel' OR tipo='imovel') NOT NULL,
    valor NUMERIC(10,2) CHECK(valor > 0 AND valor <= 1000000) NOT NULL,
    id_prop INTEGER NOT NULL,
    FOREIGN KEY (id_prop) REFERENCES proprietario(id)
);


ALTER TABLE bens ALTER COLUMN tipo SET NOT NULL;

INSERT INTO bens VALUES (201, 'Carro', 'movel', 32000, 101);
INSERT INTO bens VALUES (202, 'Moto', 'movel', 18000, 102);
INSERT INTO bens VALUES (203, 'Casa', 'imovel', 250000, 101);
INSERT INTO bens VALUES (204, 'Apartamento', 'imovel', 320000, 103);
INSERT INTO bens VALUES (205, 'Sítio', 'imovel', 70000, 104);

-- Insert multiplo
INSERT INTO bens VALUES 
(206, 'Carro', 'movel', 32000, 101),
(207, 'Moto', 'movel', 18000, 102),
(208, 'Casa', 'imovel', 250000, 101),
(209, 'Apartamento', 'imovel', 320000, 103),
(210, 'Sítio', 'imovel', 70000, 104);

-- INSERT INTO bens VALUES (206, 'Sítio', 'imovel', 1500000, 100);

SELECT * FROM bens;
