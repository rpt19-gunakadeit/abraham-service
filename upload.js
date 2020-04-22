const fs = require('fs');
const AWS = require('aws-sdk');
const awsBucket = require('./aws-bucket');
// const ID = awsBucket.ID;
// const SECRET = awsBucket.SECRET;
// const BUCKET_NAME = awsBucket.BUCKET_NAME;
const ID = 'AKIAJKW23RPHGBGDLTVQ';
const SECRET = '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';
const BUCKET_NAME = 'nike-fec-images-bucket';


const s3 = new AWS.S3({
  accessKeyId: ID,
  secretAccessKey: SECRET
})

const uploadFile = (fileName) => {
  //use read fn to read content from the file
  const fileContent = fs.readFileSync(fileName);

  const params = {
    Bucket: BUCKET_NAME,
    Key: 'test.jpg',
    Body: fileContent
  };

  s3.upload(params, function(err, data) {
    if (err) throw err;
    else console.log(`File uploaded successfully. ${data.Location}`)
  });
}
