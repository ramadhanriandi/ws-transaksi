const mysql = require('mysql');

const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '1234',
  database: 'movie_transaction',
});

con.connect((err) => {
  if (err) throw err;
});

module.exports = con;
