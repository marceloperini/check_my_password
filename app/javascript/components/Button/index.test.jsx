import React from 'react';
import renderer from 'react-test-renderer';

import Button from '.';

describe('Button', () => {
  const type = 'button';
  const color = 'primary';

  test('when children are seted', () => {
    const component = renderer.create(
      <Button
        type={type}
        color={color}
      >
        <div></div>
      </Button>
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });

  test('when onClick are seted', () => {
    const onClick = () => {};
    const component = renderer.create(
      <Button
        type={type}
        color={color}
        onClick={onClick}
      >
        <div></div>
      </Button>
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });

  test('when className are seted', () => {
    const component = renderer.create(
      <Button
        type={type}
        color={color}
        className="NewClassName"
      >
        <div></div>
      </Button>
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });

  test('when optional props are not seted', () => {
    const component = renderer.create(
      <Button
        type={type}
        color={color}
      >
        <div></div>
      </Button>
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });
});
