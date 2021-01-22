import PropTypes from 'prop-types';
import React, { useState } from 'react';
import axios from 'axios';

import TextField from '../TextField';
import Button from '../Button';

import './style.scss';

const PasswordForm = (props) => {
  const [password, setPassword] = useState('');
  const [greatPassword, setGreatPassword] = useState(false);
  const [submiting, setSubmiting] = useState(false);
  const [errors, setErrors] = useState([]);

  const checkPassword = async () => {
    const url = '/passwords/validations';

    setSubmiting(true);
    setErrors([]);

    await axios({
      method: 'post',
      responseType: 'json',
      url: url,
      data: { validation: { password } }
    }).then((response) => {
      setSubmiting(false);
      setGreatPassword(true);
    }).catch((error) => {
      const { response: { data: { errors } } } = error;

      setSubmiting(false);

      setErrors(errors);
    });
  }

  const onChange = (event) => {
    event.preventDefault();

    setPassword(event.target.value);
  }

  const onClick = (event) => {
    event.preventDefault();

    checkPassword();
  };

  return (
    <div className='PasswordForm'>
      {
        greatPassword &&
        (
          <div className="alert alert-success" role="alert">
            This password is great!
          </div>
        )
      }

      <form>
        <div className="row">
          <div className="col-md-8 col-sm-12">
            <div className="form-group">
              <TextField
                value={password}
                onChange={onChange}
                placeholder='Type the password...'
              />
            </div>
          </div>

          <div className="col-md-4 col-sm-12">
            <Button
              type="submit"
              color="outline-primary"
              onClick={onClick}
              className='btn-block'
              disabled={submiting}
            >
              { submiting ? 'Checking...' : 'Check!' }
            </Button>
          </div>
        </div>
      </form>

      <ul className="list-group">
        {
          errors.map((error) => (
            <li key={error} className="list-group-item list-group-item-danger">{error}</li>
          ))
        }
      </ul>
    </div>
  );
};

export default PasswordForm;
