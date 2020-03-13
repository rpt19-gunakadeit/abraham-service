let mysql = require('mysql');
let images = require('./images');
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

//i want to do a query insert into my small_images database
//i intend to for loop through the small images,
//and pass each img url into the database
let small = images.smallImages;
// console.log('small: ', small)
let req = `INSERT INTO small_images (id, smallUrl, styleId) values (?, ?, ?)`;
let postQuery = connection.query(req, small, (err, res, body) => {
  if (err) {
    console.log('Error: ', err);
  }
  else {
    console.log('Success')
  }
});
// console.log(postQuery.sql);
//i want to make a query to the database to retireve small image urls
//i will use this function inside my /thumbnail endpoint and provide to Damien
let getSmallImage = function(callback) {
  connection.query(postQuery, (err, img) => {
    if (err) {
      callback(err);
    } else {
      callback(null, img);
    }
  });
}

module.exports = {
  getSmallImage
}