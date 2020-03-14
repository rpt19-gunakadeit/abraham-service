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

// let small = images.smallImages;
// // let req = `INSERT INTO small_images (smallUrl, styleId) values (${JSON.stringify(small[34].url)}, ${small[34].styleId})`;
// let medium = images.mediumImages;
// let req = `INSERT INTO medium_images (mediumUrl, styleId) values (${JSON.stringify(medium[34].url)}, ${medium[34].styleId})`;
let large = images.largeImages;
let req = `INSERT INTO large_images (largeUrl, styleId) values (${JSON.stringify(large[34].url)}, ${large[34].styleId})`;

//this postQuery allowed me to post data to my database.
//each database contains 35 images in different sizes
let postQuery = connection.query(req, large, (err) => {
  if (err) {
    console.log('Error: ', err);
  }
  else {
    console.log('Success')
  }
});

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