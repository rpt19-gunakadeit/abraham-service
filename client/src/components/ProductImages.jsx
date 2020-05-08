import './ProductImages.css'

class ProductImages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      defaultImages: []
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
    let url = window.location.href.split('=');
    let styleId = url[1];
    console.log("styleId: ", styleId);
    let data = {
      id: styleId
    }
    console.log(styleId);
    $.ajax({
      //retrieve medium sized images
      url: `http://localhost:3000/t`,
      method: 'GET',
      dataType: 'json',
      data: data,
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
    let { defaultImages } = this.state;
    return (
      <div className="defaultDisplay">
          <div className='imageBody'>
          {defaultImages.map(img => (
            <img
            className="defaultSize"
            key={img.id}
            value={img.styleId}
            src={img.url}
            onClick={this.toggleModal}
            />
          ))}
          </div>
      </div>
    )
  }
}

export default ProductImages;