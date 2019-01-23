var connection = require("./config/connection.js");
var mysql = require("mysql");
var inquirer = require('inquirer');
var displayTable = require('./config/tableDisplay.js');


connection.connect(function(err) {
    if (err) {
      console.error("error connecting: " + err.stack);
      return;
    }
    console.log("connected as id " + connection.threadId);
    customerPrompt();
  });


var displayProducts = function () {
  var display = new displayTable();
  connection.query('SELECT * FROM products', function (error, response) {
      if (error) throw error;
      display.displayInventoryTable(response);
      // connection.end();
      itemPurchase();
  });
}

var customerPrompt = function () {
  inquirer.prompt({
      name: "action",
      type: "list",
      message: "Would like to continue shopping?\n",
      choices: ["Yes", "No"]
  }).then(function (answer) {
      switch (answer.action) {
          case 'Yes':
              displayProducts();
              break;
          case 'No':
              connection.end();
              break;
          default:
              break;
      }
  })
};

var itemPurchase = function () {
  inquirer.prompt([{
      name: "id",
      type: "input",
      message: "Enter the Item ID That you would like to puchase",
      validate: function (value){
          var pass = value.match(
              /[1-9]/g
          );
          if (pass) {
              return true;
          }
          return 'Please enter a valid number';
      }
  }, {
      name: "quantity",
      type: "input",
      message: "How many would you like to purchase?",
      validate: function (value){
          var pass = value.match(
              /[1-9]/g
          );
          if (pass) {
              return true;
          }
          return 'Please enter a valid number';
      }

  }]).then(function (answer) {
      // Query the database for info about the item including the quantity currently in stock.
      connection.query('SELECT * FROM products WHERE ?', { item_id: answer.id }, function (error, response) {
          console.log('\n  You would like to buy ' + answer.quantity + ' ' + response[0].product_name + ' ' + response[0].department_name + ' at $' + response[0].price + ' each');
          // customerPrompt();
          if (response[0].stock_quantity >= answer.quantity) {
              let purchasedItemQuantity = response[0].stock_quantity - parseFloat(answer.quantity);
              let productsSold = response[0].products_sold + parseFloat(answer.quantity);
              let productSalesPerQuantitiy = response[0].products_revenue +(response[0].price * answer.quantity);
              connection.query("UPDATE products SET ? WHERE ?", [
                  {
                      stock_quantity: purchasedItemQuantity,
                      products_sold: productsSold,
                      products_revenue: productSalesPerQuantitiy
                  }, {
                      item_id: answer.id
                  }], function (error, response) {
                  });
              let itemCost = response[0].price * answer.quantity;
              console.log('\n  Order has been fulfilled! Your total cost is $' + itemCost.toFixed(2) + '\n');
              // Order completed
              customerPrompt();
          } else {
              console.log('\n  Sorry, Insufficient quantity in our stock.\n');
              // Order not completed
              customerPrompt();
          }
      });
  });
}
