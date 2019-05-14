CREATE DATABASE `bamazonDB`;
USE `bamazon`;

CREATE TABLE `products` (
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`prod_name` VARCHAR( 255 ) NOT NULL,
	`dept_name` VARCHAR( 255 ) NOT NULL,
	`price` Int(11) NOT NULL,
	`stock_quantity` Int(11) NOT NULL,
	/* Set ID as primary key */
	PRIMARY KEY ( `id` )
);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("PS4", "Electronics", 299, 7);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("Polo Sweater", "Clothing", 150, 10);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("Honda Lawn Mower", "Lawn Care", 399, 1);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("Levi's Denim", "Clothing", 50, 8);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("HP Laptop", "Electronics", 1100, 5);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("Coming to America", "Movies", 11, 17);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("OLED TV", "Electronics", 2000, 3);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("Gummy Vitamins, Coming to America", "Health", 13, 40);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("Printer Stand", "Office Supplies", 150, 12);

INSERT INTO products (prod_name, dept_name, price, stock_quantity)
VALUES ("Polo Sheets", "Bedding", 80, 9);

INSERT INTO products (name, has_product)
VALUES ("Peter", false);

SELECT prod_name, dept_name, stock_quantity
FROM products