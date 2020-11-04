CREATE TABLE Professor(
	id_prof INTEGER PRIMARY KEY,
	nome VARCHAR(40) NOT NULL
);

CREATE TABLE Disciplina(
	id_disc INTEGER PRIMARY KEY,
	nome VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE Aluno(
	id_aluno INTEGER PRIMARY KEY,
	nome varchar(40) NOT NULL
);

CREATE TABLE Leciona(
	id_prof INTEGER,
	id_disc INTEGER,
	CONSTRAINT pk_leciona PRIMARY KEY (id_prof, id_disc),
	FOREIGN KEY (id_prof) REFERENCES Professor(id_prof),
	FOREIGN KEY (id_disc) REFERENCES Disciplina(id_disc)
);

CREATE TABLE Prova(
	id_prova INTEGER,
	id_disc INTEGER,
	id_aluno INTEGER,
	nota NUMERIC(2,1),
	PRIMARY KEY (id_prova, id_aluno, id_disc),
	FOREIGN KEY (id_aluno) REFERENCES Aluno (id_aluno),
	FOREIGN KEY (id_disc) REFERENCES Disciplina(id_disc)
);

CREATE TABLE Assiste(
	data DATE,
	id_disc INTEGER,
	id_aluno INTEGER,
	faltas INTEGER,
	PRIMARY KEY (data, id_disc, id_aluno),
	FOREIGN KEY (id_aluno) REFERENCES Aluno (id_aluno),
	FOREIGN KEY (id_disc) REFERENCES Disciplina(id_disc)
);