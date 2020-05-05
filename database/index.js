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

let getSmallImage = function (callback) {
  let selectQry = `SELECT * FROM small_images`;
  connection.query(selectQry, (err, imgData) => {
      if (err) {
      callback(err);
    } else {
      callback(null, imgData);
    }
  });
}

  /* need to use to render based on styleId */
let getMediumImage = (styleId, callback) => {
  console.log('styleId: ', styleId)
    let selectQry = `select * from default_images where styleId = ${styleId}`;
  connection.query(selectQry, (err, imgData) => {
    if (err) {
      callback(err);
    } else {
      callback(null, imgData);
    }
  })
}

const feedDb = () => {
  let url = "https://i.picsum.photos/id";
  let counter = 0;
  let imgId = 1;
  let styleId = 1;
  for (let i = 0; i <= 600; i++) {
    if (i !== 600) {
      imgId += 1;
      counter++;
      if (counter % 6 === 0) {
        styleId += 1;
      }
      let insertQry = `INSERT INTO default_images (url, styleId) VALUES ('${url}/${imgId}/350/500.jpg', ${styleId})`;
      connection.query(insertQry, (err, data) => {
        if (err) {
          console.error('Error: ', err)
        } else {
          console.log('Successful upload: ', data);
        }
      })
    } else {
      console.log('600 records uploaded!');
    }
  }
}
// feedDb();

module.exports = {
  getSmallImage,
  getMediumImage,
}