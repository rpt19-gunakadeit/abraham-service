import React from 'react';
//destructured props to specific prop I want to use
const ImageModal = ({handleModal, show, images}) => {
  console.log('imageModal images: ', images)
  console.log('imageModal state.show: ', show)
  // console.log('imageModal handleModal ', handleModal)
  let hideShowModal = show ? 'modal display-block' : 'modal display-none';

  return (
    <div id='modal' className={hideShowModal}>
      {/* where I will insert the content for my modal */}
      <div className='modal-content'>
        {/* close button to close modald */}
        <span className='close' onClick={handleModal}>&times;</span>
        <div className='modal-images' onClick={handleModal}>
        {images.map(img => {
            <img
            className='modalImg'
            key={img.id}
            src={img.mediumUrl}
            onClick={handleModal}
            />
          })}
        </div>
      </div>
    </div>
  )
}

export default ImageModal;