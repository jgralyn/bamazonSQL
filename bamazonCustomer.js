var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Password",
  database: "bamazonDB"
});

connection.connect(function(err) {
    if (err) throw err;
    runSearch();
  });
  
  function runSearch() {
    inquirer
      .prompt({
        name: "action",
        type: "list",
        message: "What is the ID of the product you would like to buy.?",
        choices: [
          "Find products by ID",
          "Find all products that appear more than once",
          "Find data within a specific range",
          "Search for a specific product"
        ]
      })
      .then(function(answer) {
        switch (answer.action) {
        case "Find products by ID":
          productSearch();
          break;
  
        case "Find all products that appear more than once":
          multiSearch();
          break;
  
        case "Find data within a specific range":
          rangeSearch();
          break;
  
        case "Search for a specific product":
          productSearch();
          break;
        }
      });
  }
  
  function productSearch() {
    inquirer
      .prompt({
        name: "product",
        type: "input",
        message: "how many units of the product they would like to buy.?"
      })
      .then(function(answer) {
        var query = "SELECT id, products, product quantity FROM stock_quantity WHERE ?";
        connection.query(query, { product: answer }, function(err, res) {
          for (var i = 0; i < res.length; i++) {
            console.log("id: " + res[i].id + " || Product: " + res[i].product + " || Quantity: " + res[i].stock_quantity);
          }
          runSearch();
        });
      });
  }