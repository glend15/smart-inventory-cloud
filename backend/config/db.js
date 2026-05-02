const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'mysql-inventory-kelompok2.mysql.database.azure.com',
    user: 'dbadmin',
    password: 'YOUR_PASSWORD',
    database: 'smart_inventory'
});

module.exports = connection;