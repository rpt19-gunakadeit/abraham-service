import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
let smallImages = require('./sampleImages.js').smallImages;

class ProductImages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      defaultImages: []
    }
  }

  componentDidMount() {
    this.displayImages();
  }

  displayImages() {
    $.ajax({
      url: 'http://localhost:3000/:id/:url',
      method: 'GET',
      dataType: 'json',
      success: (data) => {
        this.setState({
          defaultImages: data
        })
      },
      error: (err) => {
        console.log('Error: ', err);
      }
    })
  }

  render() {
    let images = this.state.defaultImages;
    console.log('images: ', images)
    return (
      <div>
        <h1>Render Images</h1>
        {images.map(img => (
          <img key={img.styleId} src={img.smallUrl} />
        ))}
      </div>
    )
  }
}

ReactDOM.render(<ProductImages/>, document.getElementById('app'));