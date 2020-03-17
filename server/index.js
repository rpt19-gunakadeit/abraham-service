const express = require('express');
const app = express();
const port = 3000;
const db = require('../database/index');

app.use(express.static('client/dist'))

app.get('/', (req, res) => {
  res.status(200).send('OK');
});

//get request to retrieve small images for thumbnails
app.get('/id/smallUrl', (req, res) => {
  db.getSmallImage((err, data) => {
    let imgData = JSON.stringify(data);
    // console.log('image data: ', imgData)
    if (err) {
      console.log('err: ', err);
      res.status(500).send()
    } else {
      res.status(200).send(imgData);
    }
  })
});

//get request to retrieve medium images for static images rendering to dom
/*
app.get('/id/mediumUrl', (req, res) => {
  res.status(200).send('OK');
});
*/

//get request to retrieve large images when user clicks on medium size image
/*
app.get('/id/largeUrl', (req, res) => {
  res.status(200).send('OK');
});
*/

app.listen(port, () => {
  console.log(`listening on port ${port}!`);
})