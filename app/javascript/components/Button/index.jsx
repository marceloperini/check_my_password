import PropTypes from 'prop-types';
import React from 'react';

const Button = (props) => {
  const { children, onClick, className, type, color, disabled } = props;

  return (
    <button
      type={type}
      className={`btn btn-${color} ${className}`}
      onClick={onClick}
      disabled={disabled}>
      {children}
    </button>
  );
};

Button.defaultProps = {
  onClick: () => {},
  className: '',
  disabled: false,
};

Button.propTypes = {
  children: PropTypes.node,
  onClick: PropTypes.func,
  className: PropTypes.string,
  disabled: PropTypes.bool,
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
    'outline-primary',
    'outline-secondary',
    'outline-success',
    'outline-danger',
    'outline-warning',
    'outline-info',
    'outline-light',
    'outline-dark',
  ]).isRequired,
};

export default Button;
