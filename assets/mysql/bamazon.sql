
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

DROP TABLE IF EXISTS products;

CREATE TABLE products(
ID INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(45) NOT NULL,
department_name VARCHAR(45) NOT NULL,
cost VARCHAR(45) NOT NULL,
stock_quantity VARCHAR(45) NULL,
rating VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);


INSERT INTO products (product_name, department_name, cost,stock_quantity,rating)
VALUES ("Dynasty Toys Laser Tag Set and Carrying Case", "Toys & Games", 49.99,5,4.3);

INSERT INTO products (product_name, department_name, cost, stock_quantity,rating)
VALUES ("L.O.L. Surprise! Confetti Series 3 Dolls", "Toys & Games", 21.51,8,4.1);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES("DYNASTY TOYS Camping Games - Laser Tag", "Toys & Games", 39.99, 5, 4.2);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES("Fire TV Stick with Alexa Voice Remote", "Electronics", 29.99, 10, 4.4);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES("Echo Dot (2nd Generation)", "Electronics", 39.99, 7, 4.3);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Echo (2n Generation)", "Electronics", 84.99, 5, 4.4);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Fujifilm Instax Mini Instant Film", "Camera & Photo", 39.30, 9, 4.5);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Fujifilm INSTAX Mini Instant Film", "Camera & Photo", 13.44, 12, 4.4);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Wyze Cam 1080p HD Indoor Wireless Camera", "Camera & Photo", 25.98, 8, 3.9);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("$50 PlayStation Store Gift Card", "Video Games", 49.99, 20, 4.5);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("$10 Xbox Gift Card", "Video Games", 9.99, 12, 4.4);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Donkey Kong Country: Tropical Freeze", "Video Games", 59.98, 8, 4.5);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Magnolia Table: A Collection of Recipes", "Books", 14.99, 6, 4.6);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Barracoon: The Story of the Last Black Cargo", "Books", 14.99, 8, 4.6);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("The Soul of America:Better Angels", "Books", 17.99, 9, 4.5);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Cubic Zirconia Stud Earrings", "Clothing, Shoes & Jewelry", 6, 6, 4.4);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("native Jefferson Slip-On Sneaker", "Clothing, Shoes & Jewelry", 19.80, 4, 4.5);

INSERT INTO products (product_name, department_name, cost, stock_quantity, rating)
VALUES ("Baby Boys' Flap Sun Protection Swim Hat", "Clothing, Shoes & Jewelry", 10.50, 7, 4.7);









