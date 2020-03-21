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

let getSmallImage = function(callback) {
  let selectQry = `SELECT * FROM small_images where styleId = ?`;
  styleId = 34;
  connection.query(selectQry, styleId, (err, imgData) => {
      if (err) {
      callback(err);
    } else {
      callback(null, imgData);
    }
  });
}

let getMediumImage = (callback) => {
  let selectQry = `select * from medium_images where styleId = ?`;
  styleId = 24;
  connection.query(selectQry, styleId, (err, imgData) => {
    if (err) {
      callback(err);
    } else {
      callback(null, imgData);
    }
  })
}

module.exports = {
  getSmallImage,
  getMediumImage
}