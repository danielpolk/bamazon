var orm = require("./config/orm.js");

// Find all the products ordering by the lowest price to the highest price.
orm.selectAndOrder("product_name", "products", "price");
