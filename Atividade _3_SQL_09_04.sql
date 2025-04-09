CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
idade INT,
turma VARCHAR(255) NOT NULL,
materia VARCHAR(255),
nota DECIMAL (3,1) NOT NULL,
PRIMARY KEY (id)
);

SELECT *FROM tb_estudantes;

INSERT INTO tb_estudantes(nome, idade, turma, materia, nota)
VALUES ("Amanda Cardoso", 10 , "5º Ano D", "Português", 8.5),
("Breno Ferreira", 12, "7º Ano A", "Matemática", 6.5),
("Cristina Kurgan", 9 , "4º Ano B", "História", 10),
("Daniel Souza", 11 , "6º Ano C", "Ciências", 7.0),
("Ellie Leite", 14 , "9º Ano D", "Química", 9.5),
("Felipe Mathias", 8, "3º Ano B", "Inglês", 6.0),
("Giovanna Martins", 13 , "8º Ano A", "Geografia", 6.9),
("Helen Noronha", 7 , "2º Ano", "Artes", 5.9);

SELECT * FROM tb_estudantes WHERE nota >= 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;  

UPDATE tb_estudantes SET turma = "8º Ano D" WHERE id = 7; 
