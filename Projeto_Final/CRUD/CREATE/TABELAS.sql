CREATE DATABASE Streaming_Filmes;

CREATE TABLE Cliente (
	ID_cliente INT IDENTITY(1,1),
	nome_cli VARCHAR(60) NOT NULL,
	email_cli VARCHAR(70) NULL,
	idade INT NULL,
	data_nascimento DATE,
	Cidade VARCHAR(30) NOT NULL,
	UF CHAR(2) NULL,
	CEP CHAR(9) NOT NULL,
	CPF CHAR(12) NOT NULL,
	CONSTRAINT PK_ID_cliente PRIMARY KEY (ID_cliente)
);


CREATE TABLE Assinatura (
	ID_assinatura INT IDENTITY(1,1),
	ID_cl INT NOT NULL,
	Dt_assinatura DATE NOT NULL,
	Dt_fim_assinatura DATE NULL,
	Plano_escolhido VARCHAR(20) NOT NULL,
	Forma_pgto VARCHAR(20) NOT NULL,
	CONSTRAINT PK_ID_assinatura PRIMARY KEY (ID_assinatura),
	CONSTRAINT FK_ID_cl FOREIGN KEY (ID_cl)
		REFERENCES Cliente (ID_cliente)	
);

CREATE TABLE Filmes (
	ID_filme INT IDENTITY(1,1),
	Titulo VARCHAR(60) NOT NULL,
	Ano INT NULL,
	Genero VARCHAR(60) NOT NULL,
	Tempo_em_minutos INT NULL,
	CONSTRAINT PK_ID_filme PRIMARY KEY (ID_filme)
);

CREATE TABLE Visualizaçoes (
	ID_view INT IDENTITY(1,1),
	ID_telespectador INT NOT NULL,
	ID_filme_view INT NOT NULL,
	Nome_filme VARCHAR(60) NOT NULL,
	Review_filme DECIMAL(2,1) NULL,
	Cont_views INT NOT NULL,
	CONSTRAINT PK_ID_view PRIMARY KEY (ID_view),
	CONSTRAINT FK_ID_telespectador FOREIGN KEY (ID_telespectador)
		REFERENCES Cliente (ID_cliente),
	CONSTRAINT FK_ID_filme_view FOREIGN KEY (ID_filme_view)
		REFERENCES Filmes (ID_filme)	
);

