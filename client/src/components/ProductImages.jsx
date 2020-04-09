import React from 'react';
import $ from 'jquery';
import ImageModal from './ImageModal.jsx';

class ProductImages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      defaultImages: [],
      show: false
    }
    this.toggleModal = this.toggleModal.bind(this);
  }

  componentDidMount() {
    this.displayImages();
  }

  toggleModal() {
    this.setState({
      show: !this.state.show
    })
  }

  displayImages() {
    let params = new URL(window.location.href)
    let styleId = params.searchParams.get('');
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
    let { defaultImages, show } = this.state;
    return (
      <div className="defaultDisplay">
        <h1 className="pageTitle">Nike</h1>
        {defaultImages.map(img => (
          <img
          className="defaultSize"
          key={img.id}
          value={img.styleId}
          src={img.mediumUrl}
          />
        ))}
        <ImageModal images={defaultImages} handleModal={this.toggleModal} show={show} />
      </div>
    )
  }
}

export default ProductImages;