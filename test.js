import React from 'react';
import ProductImages from './client/src/components/ProductImages.jsx';
import renderer from 'react-test-renderer';
import {mount, shallow} from 'enzyme';

test('Correctly render <ProductImages/>', () => {
  const tree = renderer.create(<ProductImages/>).toJSON();
  expect(tree).toMatchSnapshot();
})