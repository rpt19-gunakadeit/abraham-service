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
  let selectQry = `SELECT * FROM small_images where styleId = ${styleId}`;
  connection.query(selectQry, (err, imgData) => {
      if (err) {
      callback(err);
    } else {
      callback(null, imgData);
    }
  });
}

let getMediumImage = (callback) => {
  // console.log('styleId: ', styleId)
    let selectQry = `select * from medium_images where styleId = 7`;
  connection.query(selectQry, (err, imgData) => {
    if (err) {
      callback(err);
    } else {
      callback(null, imgData);
    }
  })
}
  /* need to use to render based on styleId */
// let getMediumImage = (styleId, callback) => {
//   console.log('styleId: ', styleId)
//     let selectQry = `select * from medium_images where styleId = ${styleId}`;
//   connection.query(selectQry, (err, imgData) => {
//     if (err) {
//       callback(err);
//     } else {
//       callback(null, imgData);
//     }
//   })
// }

module.exports = {
  getSmallImage,
  getMediumImage
}