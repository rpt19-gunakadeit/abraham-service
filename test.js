import React from 'react';
import ProductImages from './client/src/components/ProductImages.jsx';
import renderer from 'react-test-renderer';
import {mount, shallow} from 'enzyme';

/* unit tests */

test('Correctly render <ProductImages/>', () => {
  const tree = renderer.create(<ProductImages/>).toJSON();
  expect(tree).toMatchSnapshot();
});

test('should contain state key defaultImages', () => {
  const wrapper = mount(<ProductImages />);
  expect(wrapper).toHaveState({defaultImages: []});
});

test('should contain an h1 tag', () => {
  const wrapper = mount(<ProductImages />);
  expect(wrapper.find('h1')).toExist();
});

test('should contain a div tag', () => {
  const wrapper = mount(<ProductImages />);
  expect(wrapper.find('div')).toExist();
});

/* end to end tests */






