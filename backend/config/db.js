const mysql = require('mysql12');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: "",
    database: 'inventory_db'
});

module.exports = connection;