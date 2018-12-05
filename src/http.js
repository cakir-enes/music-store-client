import Axios from 'axios';
import store from './store';

export default () => Axios.create({
  baseURL: store.state.baseUrl,
  timeout: 5000,
  headers: {
    Authorization: `Bearer ${store.state.auth.token}`,
  },
});