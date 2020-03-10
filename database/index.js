let mysql = require('mysql');
let connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'item_information'
});

connection.connect((err) => {
  if (err) console.log('Error connecting to DB');
  else console.log('DB connected!');
});