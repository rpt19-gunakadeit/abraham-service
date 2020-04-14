import React from 'react';
//destructured props to specific prop I want to use
const ImageModal = ({handleModal, show, images}) => {
  let hideShowModal = show ? 'modal display-block' : 'modal display-none';

  console.log('images: ', images)
    //creates an array for each image url
  let modalImage = images.map(img => img.mediumUrl)
  console.log('modalImage: ', modalImage)

  //i want to grab the url in modalImage depending on which image url is clicked on the client

  return (
    <div id='modal' className={hideShowModal}>
      {/* where I will insert the content for my modal */}
      <div className='modal-content'>
        {/* close button to close modald */}
        <span className='close' onClick={handleModal}>&times;</span>
        {/* <h1>MODAL TEXT</h1>
        <h2>IMAGE SHOULD RENDER BUT IS NOT FOR SOME REASON</h2>

        {images.map(img => {
            <img
            className="img-modal"
            src={img.mediumUrl}
            onClick={handleModal}
            />
          })} */}

        </div>
    </div>
  )
}

export default ImageModal;