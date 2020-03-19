let mysql = require('mysql');
let connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'product_images'
});

connection.connect((err) => {
  if (err) console.log('Error connecting to DB');
  else console.log('DB connected!');
});
/*
i want to make a query to the database to retireve smallImages data and use in callback fn
i will use this fn inside my /id/thumbnail endpoint and provide Damien with: image url and product style id
*/

//refactor fn name 'getImage'
//refactor req to select url, styleId from table where styleId = (expected styleId?)
let getSmallImage = function(callback) {
  let req = `SELECT * FROM small_images where styleId = ?`;
  styleId = 34;
  connection.query(req, styleId, (err, imgData) => {
      if (err) {
      callback(err);
    } else {
      console.log('IMG DATA: ', imgData)
      callback(null, imgData);
    }
  });
}

module.exports = {
  getSmallImage
}