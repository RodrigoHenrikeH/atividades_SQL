CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
marca VARCHAR(255),
tipo VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
validade DATE,
quantidade INT,
preco DECIMAL (6,2),
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD categoria_id BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id); 

INSERT INTO tb_categorias (marca, tipo)
VALUES ("Genérico", "Comprimido"),
("Genérico","Xarope"),
("Genérico","Cosmético"),
("Genérico","Higiene"),
("Genérico","Suplemento");

INSERT INTO tb_produtos(nome, validade, quantidade, preco, categoria_id)
VALUES ("Benegrip", "2025-06-10", 50, 4.79, 1),
 ("Vick Pirena", "2026-01-15", 100, 22.90, 2),
 ("Fralda", "2025-12-01", 80, 28.50, 4),
 ("Diazepan", "2025-11-30", 60, 99.75, 1),
 ("Lenço Umedecido", "2026-03-20", 90, 25.00, 4),
 ("Creme Para Pentear", "2026-07-01", 70, 43.00, 3),
 ("Tinta para cabelo", "2027-02-10", 120, 74.20, 3),
 ("Whey", "2025-09-15", 85, 55.99, 5),
 ("Sabonete", "2027-12-31", 200, 2.10, 4),
 ("Farinha Láctea", "2026-06-06", 150, 62.80, 5);
 
 SELECT * FROM tb_produtos WHERE preco > 50.00; 
 SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
 SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
 
 SELECT * FROM tb_produtos INNER JOIN tb_categorias
 ON tb_produtos.categoria_id = tb_categorias.id;
 
 SELECT * FROM tb_produtos INNER JOIN tb_categorias
 ON tb_produtos.categoria_id = tb_categorias.id WHERE categoria_id = 4;
 
