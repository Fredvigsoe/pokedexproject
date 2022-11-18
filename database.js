const mysql = require("mysql2");
require('dotenv').config();

const mysqlConnection = mysql.createConnection({
    host: process.env.HOST,
    port: process.env.PORT,
    user: process.env.MYSQL_USER,
    database: process.env.DATABASE,
    password: process.env.PASSWORD,
    multipleStatements: true,
});

console.log(process.env.HOST)
console.log(process.env.PORT)
console.log(process.env.MYSQL_USER)
console.log(process.env.DATABASE)

mysqlConnection.connect((err) => {
    if (!err) {
        console.log("Connected");
    } else {
        console.log(err);
        console.log("Connection Failed");
    }
});
module.exports = mysqlConnection;