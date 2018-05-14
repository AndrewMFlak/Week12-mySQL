var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    user: "root",

    password: "password",
    database: "bamazon_DB"
});


connection.connect(function (err) {
    if (err) throw err;
    displayProducts();
})

// * --  Display All of the Items available for sale. This initial display, should include the ids, names, and prices of products for sale --
var displayProducts = function () {
    var query = 'SELECT * FROM products'
    connection.query(query, function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log("Item ID: " + res[i].ID + " || Product: " + res[i].product_name + " || Department: " + res[i].department_name + " || Price: " + res[i].cost + " || Stock: " + res[i].stock_quantity + " || Rating: " + res[i].rating);

        }
        userSearch();
    })
};
var displayProducts = function () {
    var query = 'SELECT * FROM products'
    connection.query(query, function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log("Item ID: " + res[i].ID + " || Product: " + res[i].product_name + " || Department: " + res[i].department_name + " || Price: " + res[i].cost + " || Stock: " + res[i].stock_quantity + " || Rating: " + res[i].rating);

        }
        userSearch();
    })
};

function userSearch() {
    inquirer.prompt([{
        type: 'input',
        name: 'identifier',
        message: 'What is the ID of the product you would like to buy?',
        validate: function (value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
    }, {
        type: 'input',
        name: 'quantity',
        message: 'How many of this item would you like to purchase',
        validate: function (value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
    }])
        .then(function (answer) {
            var queryStr = 'SELECT * FROM products WHERE ID=' + answer.identifier;

            connection.query(queryStr, function (err, res) {
                for (var i = 0; i < res.length; i++) {
                    if (answer.quantity <= res[i].stock_quantity) {
                        console.log("We currently have " + res[i].stock_quantity + " " + res[i].product_name + ".");
                        console.log("Thank you for shopping with us! Your order of " + res[i].stock_quantity + " " + res[i].product_name + " is now being processed.");
                        var updatedInv = function () {
                            var updatedQty = parseInt(res[i].stock_quantity - answer.quantity);
                            var sqlUpdate = "INSERT INTO products (product_name,department_name, cost, stock_quantity, rating) VALUES '+connection.escape("+res[i].product_name + ", " + res[i].department_name + ", " + res[i].cost+ ", " + updatedQty + ", " + res[i].rating +")";
                            connection.query(sqlUpdate, function (err, res) {
                                if (err) throw err;
                                console.log("item quantity is updated")
                            });
                        };
                    }
                    else {
                        console.log("Not enough of this product in stock.  Please adjust your order quantity per our current inventory in stock");

                    }
                    updatedInv();
                }

            });
        });
}