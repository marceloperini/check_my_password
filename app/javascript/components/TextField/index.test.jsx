import React from 'react';
import renderer from 'react-test-renderer';

import TextField from '.';

describe('TextField', () => {
  const onChange = () => {};

  test('when value prop are seted', () => {
    const component = renderer.create(
      <TextField
        value="Value"
        onChange={onChange}
      />
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });

  test('when placeholder prop are seted', () => {
    const component = renderer.create(
      <TextField
        onChange={onChange}
        placeholder="Placeholder..."
      />
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });

  test('when value and placeholder props are not seted', () => {
    const component = renderer.create(
      <TextField
        onChange={onChange}
      />
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });
});
