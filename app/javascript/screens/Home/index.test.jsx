import React from 'react';
import renderer from 'react-test-renderer';

import Home from '.';

describe('Home', () => {
  test('screen', () => {
    const component = renderer.create(
      <Home />
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });
});
