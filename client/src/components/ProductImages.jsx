import React from 'react';
import $ from 'jquery';

class ProductImages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      defaultImages: [],
      largeImages: []
    }
  }

  componentDidMount() {
    this.displayImages();
  }

  displayImages() {
    let params = new URL(window.location.href)
    let styleId = params.searchParams.get('');
    console.log('client styleId: ', styleId)
    $.ajax({
      //retrieve medium sized images
      url: `http://localhost:3000/:${styleId}`,
      method: 'GET',
      dataType: 'json',
      success: (data) => {
        console.log('data: ', data)
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
    return (
      <div className="defaultDisplay">
        <h1 className="pageTitle">Nike</h1>
        {images.map(img => (
          <img
          className="defaultSize"
          key={img.id}
          src={img.mediumUrl}
          />
        ))}
      </div>
    )
  }
}

export default ProductImages;