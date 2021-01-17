import React from 'react';
import renderer from 'react-test-renderer';

import Panel from '.';

describe('Panel', () => {
  test('with children prop', () => {
    const component = renderer.create(
      <Panel>
        <h1>Testing My Code!</h1>
      </Panel>
    );

    const tree = component.toJSON();

    expect(tree).toMatchSnapshot();
  });
});
