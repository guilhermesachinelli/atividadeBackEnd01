CREATE DATABASE atividade_01;

\c atividade_01;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    idade INTEGER NOT NULL,
    signo VARCHAR(20) NOT NULL,
    datanascimento DATE NOT NULL,
    sexo VARCHAR(10) NOT NULL
);