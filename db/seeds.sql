/* To run this file, we do the following in our Terminal:

1. Go to the directory of this sql file.

2. Get into our mysql console, by running this command in terminal:
/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot

3. Then run "source seeds.sql"

*/

-- Adds data into the database bamazon and labels it for use.

INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Cowboy Hat', 'apparel', 56, 90, 4, 300);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Electric Toothbrush Heads', 'personal care', 33.50, 1500, 58, 560);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('50lb Bag of Dog Food', 'pet', 59, 200, 43, 900);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Wireless Headphones', 'technology', 45.50, 90, 5, 250);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('iPhone Case', 'technology', 9.99, 150, 20, 350);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Instant Pot', 'kitchen', 89, 400, 9, 720);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Backpack', 'luggage', 24, 75, 5, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Paper Towels', 'household goods', 3.99, 900, 5, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Deoderant', 'personal care', 4.99, 1000, 6, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity, products_sold, products_revenue) VALUES ('Toilet Paper', 'household goods', 6.99, 1500, 8, 56);
