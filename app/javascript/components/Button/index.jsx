import PropTypes from 'prop-types';
import React from 'react';

const Button = (props) => {
  const { children, onClick, className, type, color } = props;

  return (
    <button
      type={type}
      className={`btn btn-${color} ${className}`}
      onClick={onClick}>
      {children}
    </button>
  );
};

Button.defaultProps = {
  onClick: () => {},
  className: '',
};

Button.propTypes = {
  children: PropTypes.node,
  onClick: PropTypes.func,
  className: PropTypes.string,
  type: PropTypes.oneOf([
    'button',
    'submit',
  ]).isRequired,
  color: PropTypes.oneOf([
    'primary',
    'secondary',
    'success',
    'danger',
    'warning',
    'info',
    'light',
    'dark',
    'link',
  ]).isRequired,
};

export default Button;
