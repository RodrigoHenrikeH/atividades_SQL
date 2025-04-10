CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(255) NOT NULL, 
origem VARCHAR(255) NOT NULL, 
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ATK BIGINT,
DEF BIGINT,
especial VARCHAR(255),
 PRIMARY KEY (id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD classe_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

INSERT INTO tb_classes(classe, origem) 
VALUE ("Ninja","Vila Da Folha"), 
("Ninja","Vila Da Chuva"),
("Sayajin","Planeta Vegeta"),
("Arqueiro","Terra Media"),
("Guerreiro","Vinland");

INSERT INTO tb_personagens(nome, ATK, DEF, especial, classe_id)
VALUE ("Itachi Uchiha", 3500 , 4000 , "Amaterasu", 1),
("Goku", 9000 , 6000, "Kamehameha", 3),
("Vegeta", 8800 , 5000 , "Galic Gun", 3),
("Leonidas", 900 , 850 , "This Is Sparta", 5),
("Legolas", 1900 , 1550 , "Mira Perfeita", 4),
("Conan", 2500 , 2000 , "Super Força", 5),
("Chibi", 150 ,  100 , "Ser Leal", 2),
("Oliver Queen", 1500 , 1250 , "Arqueiro Verde", 4);

SELECT * FROM tb_personagens WHERE ATK > 2000;
SELECT * FROM tb_personagens WHERE DEF BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, ATK, DEF, especial, classe_id, classe FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id WHERE classe_id = 4; 
-- aqui eu selecionei apenas os dados que achei necessários serem mostrados na busca, espero que esteja certo. (excluí o dado da origem da tb_classes pra focar na classe do personagem) 
