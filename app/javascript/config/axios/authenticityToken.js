import axios from 'axios';
import ReactOnRails from 'react-on-rails';

axios.interceptors.request.use(
  config => {
    const headers = ReactOnRails.authenticityHeaders(headers);

    return {
      ...config,
      headers
    };
  }
);

