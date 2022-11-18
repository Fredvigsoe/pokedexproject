const mysql = require("mysql2");
require('dotenv').config();

const mysqlConnection = mysql.createConnection({
    host: process.env.HOST,
    port: 3306,
    user: process.env.MYSQL_USER,
    database: process.env.DATABASE,
    password: process.env.PASSWORD,
    multipleStatements: true,
});



mysqlConnection.connect((err) => {
    if (!err) {
        console.log("Connected");
    } else {
        console.log(err);
        console.log("Connection Failed");
    }
});
module.exports = mysqlConnection;