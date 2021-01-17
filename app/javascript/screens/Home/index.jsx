import PropTypes from 'prop-types';
import React from 'react';

import Panel from '../../components/Panel';
import PasswordForm from '../../components/PasswordForm';

const Home = () => {
  return (
    <div>
      <Panel>
        <h1>Check My Password</h1>

        <PasswordForm />
      </Panel>
    </div>
  );
};

export default Home;
