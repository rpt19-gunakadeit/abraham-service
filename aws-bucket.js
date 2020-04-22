const AWS = require('aws-sdk');
const awsKey = require('./aws-keys')
const BUCKET_NAME = 'nike-fec-images-bucket';

const s3 = new AWS.S3({
  accessKeyId: awsKey.ID,
  secretAccessKey: awsKey.SECRET
})

const params = {
  Bucket: BUCKET_NAME,
  CreateBucketConfiguration: {
    LocationConstraint: "us-west-1"
  }
};

s3.createBucket(params, function(err, data) {
  if (err) console.log(err, err.stack);
  else console.log('Bucket Created Successfully', data.Location);
});