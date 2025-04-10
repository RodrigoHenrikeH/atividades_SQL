CREATE DATABASE db_atividade_1;
USE db_atividade_1;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
idade INT,
cargo VARCHAR (255) NOT NULL,
salario DECIMAL (6,2) NOT NULL,
contratacao DATE,
PRIMARY KEY (id) 
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, idade, cargo, salario, contratacao)
VALUE ("Luiz Fernando", 32 , "Encarregado", 7000.00 , "2012-05-11"),
("Augusto", 33 , "Impressor", 3800.00 , "2016-08-09"),
("Luigi", 28 , "Produção", 3500.00 , "2018-08-05"),
("João Victor", 30, "Gerente", 9900.00 , "2010-03-15"),
("Bruno", 24 , "Auxiliar", 1900.00 , "2022-11-22");

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 4000.00 WHERE id = 3;