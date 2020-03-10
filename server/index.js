const express = require('express');
const app = express();
const port = 3000;
const bodyParser = require('body-parser');
const db = require('../database/index');

app.use(express.static('client/dist'))
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.status(200).send('OK');
});

app.listen(port, () => {
  console.log(`listening on port ${port}!`);
})