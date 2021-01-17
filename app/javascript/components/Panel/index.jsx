import PropTypes from 'prop-types';
import React from 'react';

import './style.scss';

const Panel = (props) => {
  const { children } = props;

  return (
    <div className='Panel'>
      { children }
    </div>
  );
};

Panel.propTypes = {
  children: PropTypes.node.isRequired,
};

export default Panel;
