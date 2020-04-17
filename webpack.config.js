let path = require('path');
let src = path.join(__dirname, '/client/src');
let dist = path.join(__dirname, '/client/dist');

module.exports = {
  entry: `${src}/index.jsx`,
  output: {
    filename: 'bundle.js',
    path: dist
  },
  module: {
    rules: [
      {
        test: /\.jsx$/,
        loader: 'babel-loader',
        options: {
          presets: ['@babel/preset-react']
        }
      },
      {
        test: /\.css$/,
        loader: ['style-loader', 'css-loader']
      }
    ]
  },
  watch: true, //actively watches for changes
  mode: 'production' //falls on production when not set, but setting eliminates warnings from webpack run
};