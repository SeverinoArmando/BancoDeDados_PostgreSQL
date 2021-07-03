CREATE TABLE IF NOT EXISTS banco(
	id_numero INTEGER NOT NULL,
	banco_nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id_numero)
);

CREATE TABLE IF NOT EXISTS agencia(
	id_banco_numero INTEGER NOT NULL,
	id_agencia_numero INTEGER NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id_banco_numero,id_agencia_numero),
	FOREIGN KEY (id_banco_numero) REFERENCES banco(id_numero)
);

CREATE TABLE IF NOT EXISTS cliente(
	id_cliente bigserial primary key,
	nome VARCHAR (100) NOT NULL,
	email VARCHAR (100) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS conta_corrente(
	banco_numero INTEGER NOT NULL,
	agencia_numero INTEGER NOT NULL,
	conta_numero BIGINT NOT NULL,
	digito SMALLINT NOT NULL,
	cliente_numero BIGINT NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (banco_numero,agencia_numero,conta_numero,digito,cliente_numero),
	FOREIGN KEY (banco_numero,agencia_numero) REFERENCES agencia(id_banco_numero,id_agencia_numero),
	FOREIGN KEY (cliente_numero) REFERENCES cliente(id_cliente)
);


CREATE TABLE IF NOT EXISTS tipo_transacao(
	id_transacao SMALLSERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cliente_transacoes(
	id_cliente_transacao BIGSERIAL PRIMARY KEY,
	banco_numero INTEGER NOT NULL,
	agencia_numero INTEGER NOT NULL,
	conta_corrente_numero INTEGER NOT NULL,
	conta_corrente_digito SMALLINT NOT NULL,
	cliente_numero BIGINT NOT NULL,
	id_tipo_transacao SMALLINT NOT NULL,
	valor NUMERIC (15,2) NOT NULL,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(banco_numero,agencia_numero,conta_corrente_numero,conta_corrente_digito,cliente_numero) REFERENCES conta_corrente(banco_numero,agencia_numero,conta_numero,digito,cliente_numero)
);

