// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import ReactOnRails from 'react-on-rails';

import 'config';

import Home from '../screens/Home';

ReactOnRails.register({
  Home,
});
