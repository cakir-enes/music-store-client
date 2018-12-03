import Axios from 'axios';
import store from './store';

export default () => Axios.create({
  baseURL: store.state.baseUrl,
  timeout: 5000,
});
