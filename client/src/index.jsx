import React from 'react';
import ReactDOM from 'react-dom';

class ProductImages extends React.Component {
  constructor(props) {
    super(props);
    // this.state = {}
  }
  render() {
    return (
      <div>
        <h1>Render Nike Images</h1>
      </div>
    )
  }
}

ReactDOM.render(<ProductImages/>, document.getElementById('app'));