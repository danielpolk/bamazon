/* To run this file, we do the following in our Terminal:

1. Go to the directory of this sql file.

2. Get into our mysql console, by running this command in terminal:
/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot

3. Then run "source schema.sql"

*/

-- Create the database bamazon and specified it for use.
-- CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products
(
	item_id int NOT NULL AUTO_INCREMENT,
	product_name varchar(255) NOT NULL,
	department_name varchar(255) NOT NULL,
	price int NOT NULL,
	stock_quantity int NOT NULL,
	products_sold int NOT NULL,
	products_revenue int NOT NULL,
	PRIMARY KEY (item_id)
);
