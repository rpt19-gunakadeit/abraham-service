const express = require('express');
const app = express();
const port = 3000;
const bodyParser = require('body-parser');

app.use(express.static('public'))
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.status(200).send('OK');
});

app.listen(port, () => {
  console.log(`listening on port ${port}!`);
})