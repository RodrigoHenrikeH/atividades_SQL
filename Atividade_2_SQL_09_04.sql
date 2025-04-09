CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
marca VARCHAR(255),
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
quantidade INT,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(tipo, marca, nome, preco, quantidade)
VALUES ("Jogo","Playstation", "The Last Of Us Part II", 299.90, 50),
("Jogo","Nintendo", "The legend of Zelda TOTK", 499.00, 100),
("Tênis","Nike", "Air Jordan 1", 1700.00 , 45),
("Tênis","Nike", "Nike Dunk SB", 399.00 , 50),
("Celular","Samsung", "Galaxy S25 Ultra", 9900.00 , 100),
("Celular","Xiaomi", "Redmi 18 PRO", 5000.00, 75),
("Console","Playstation", "Playstation 5", 3500.00 , 25),
("Console","Nintendo", "Nintendo Switch 2", 4900.00 , 80);

SELECT * FROM tb_produtos WHERE preco >= 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 2300.00 WHERE id = 3;

