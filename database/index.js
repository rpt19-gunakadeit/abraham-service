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
/*
i want to make a query to the database to retireve smallImages data and use in callback fn
i will use this fn inside my /id/thumbnail endpoint and provide Damien with: image url and product style id
*/
let getSmallImage = function(callback) {
  let req = `SELECT * FROM small_images`;
  connection.query(req, (err, imgData) => {
    if (err) {
      callback(err);
    } else {
      callback(null, imgData);
    }
  });
}

module.exports = {
  getSmallImage
}