import React from 'react';
import $ from 'jquery';
import './ProductImages.css'

class ProductImages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      defaultImages: [],
      show: false,
      modalView: [] //i want to use this key to trigger the view of images to a modal state onClick
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
          defaultImages: data,
          modalView: data
        })
      },
      error: (err) => {
        console.log('Error: ', err);
      }
    })
  }

  render() {
    let { defaultImages, show, modalView } = this.state;
    // console.log('modalView: ', modalView);
    return (
      <div className="defaultDisplay">
        <div className="nav">
          <img
          src="https://miro.medium.com/max/3360/1*OUhIm3AKJlbrFrxdS-7E6Q.png"
          className="navbar"
          />
        </div>
          <div className='imageBody'>
          {defaultImages.map(img => (
            <img
            className="defaultSize"
            // id="modal"
            key={img.id}
            value={img.styleId}
            src={img.mediumUrl}
            onClick={this.toggleModal}
            />
          ))}
          </div>
        {/* <ImageModal images={modalView} show={show} handleModal={this.toggleModal} /> */}
      </div>
    )
  }
}

export default ProductImages;