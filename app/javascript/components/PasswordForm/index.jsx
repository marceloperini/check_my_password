import PropTypes from 'prop-types';
import React, { useState } from 'react';

import TextField from '../TextField';
import Button from '../Button';

import './style.scss';

const PasswordForm = (props) => {
  const [password, setPassword] = useState('');

  const onChange = (event) => {
    event.preventDefault();

    setPassword(event.target.value);
  }

  const onClick = (event) => {

  };

  return (
    <div className='PasswordForm'>
      <div className='InputContainer'>
        <TextField
          value={password}
          onChange={onChange}
          placeholder="Type the password..."
        />

        <Button
          type="button"
          color="primary"
          onClick={onClick}
        >
          Check!
        </Button>
      </div>
    </div>
  );
};

export default PasswordForm;
