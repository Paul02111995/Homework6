CREATE TABLE warehouses (
	id SERIAL NOT NULL PRIMARY KEY,
	name varchar(50) NOT NULL,
	address varchar(50) NOT NULL
);

CREATE TABLE products (
	id SERIAL NOT NULL PRIMARY KEY,
	name varchar(100) NOT NULL,
	price numeric(10, 2) NOT NULL,
	warehouses_id INT,
	FOREIGN KEY (warehouses_id) REFERENCES warehouses(id)
);

INSERT INTO warehouses (name, address) VALUES
	('warehouses 1', 'address 1'),
	('warehouses 2', 'address 2'),
	('warehouses 3', 'address 3');

SELECT * FROM warehouses;

INSERT INTO products (name, price, warehouses_id) VALUES
	('Mobile phones', 10.99, 1),
	('Books', 19.99, 1),
	('Coffee makers', 8.49, 2),
	('Soccer balls', 15.99, 2),
	('Shampoos', 5.99, 2),
	('Cameras', 12.49, 3),
	('Trackers', 9.99, 3),
	('Microwaves', 14.99, 3),
	('Laptops', 7.99, 1),
	('Bicycles', 11.49, 2);
SELECT * FROM products;

UPDATE products
SET price = 14.99
WHERE id = 1;

SELECT * FROM products;

DELETE FROM products
WHERE warehouses_id = 1;

CREATE INDEX idx_product_name ON products (name);

