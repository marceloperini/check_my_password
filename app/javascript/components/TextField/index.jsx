import PropTypes from 'prop-types';
import React from 'react';

const TextField = (props) => {
  const { value, onChange, placeholder } = props;

  return (
    <div className="TextField">
      <input
        type="text"
        className="form-control"
        value={value}
        onChange={onChange}
        placeholder={placeholder}
      />
    </div>
  );
};

TextField.defaultProps = {
  value: '',
  placeholder: '',
};

TextField.propTypes = {
  value: PropTypes.string,
  placeholder: PropTypes.string,
  onChange: PropTypes.func.isRequired,
};

export default TextField;
