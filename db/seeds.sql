/* To run this file, we do the following in our Terminal:

1. Go to the directory of this sql file.

2. Get into our mysql console, by running this command in terminal:
/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot

3. Then run "source seeds.sql"

*/

-- Adds data into the database bamazon and labels it for use.

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cowboy Hat', 'apparel', 56, 90);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Electric Toothbrush Heads', 'personal care', 33.50, 1500);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('50lb Bag of Dog Food', 'pet', 59, 200);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Wireless Headphones', 'technology', 45.50, 90);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('iPhone Case', 'technology', 9.99, 150);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Instant Pot', 'kitchen', 89, 400);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Backpack', 'luggage', 24, 75);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Paper Towels', 'household goods', 3.99, 900);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Deoderant', 'personal care', 4.99, 1000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Toilet Paper', 'household goods', 6.99, 1500);
