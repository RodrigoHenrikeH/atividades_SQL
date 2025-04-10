CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE  tb_categorias(
id BIGINT AUTO_INCREMENT,
tamanho VARCHAR(255) NOT NULL,
tipo VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
massa VARCHAR (255),
borda VARCHAR (255),
valor DECIMAL(5,2) NOT NULL,
PRIMARY KEY(id)
);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

ALTER TABLE tb_pizzas ADD categorias_id BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id); 


INSERT INTO tb_categorias(tamanho, tipo)
VALUES ("Grande","Salgada"),
("Grande","Doce"),
("Broto","Salgada"),
("Broto","Doce"),
("Tamanho Familia","Salgada"),
("Tamanho Familia","Doce");

INSERT INTO tb_pizzas(sabor, massa, borda, valor, categorias_id)
VALUES ("Mussarela", "Média", "Recheada", 50.00 , 1),
("Calabresa", "Fina", "Tradicional", 50.00 , 1),
("Frango com catupiry", "Média", "Recheada", 35.00 , 3),
("Lombo Canadense", "Grossa", "Vulcão", 95.00 , 5),
("Pepperoni", "Tradicional", "Recheada", 95.00 ,5),
("Chocolate", "Média", "Tradicional", 55.00 ,2),
("Banana com Chocolate", "Fina", "Tradicional", 40.00 ,4),
("Morango Com Nutella", "Grossa", "Vulcão", 100.00, 6);

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 and 100.00;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id WHERE categorias_id = 1;

