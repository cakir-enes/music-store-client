import Vue from 'vue';
import Vuex from 'vuex';
// import createPersistedState from 'vuex-persistedstate';

import auth from './auth';
import albums from './albums';
import cart from './cart';

Vue.use(Vuex);

export default new Vuex.Store({
  strict: true,
  state: {
    baseUrl: '/api',
  },
  modules: {
    auth, albums, cart,
  },
  mutations: {},
  actions: {},
  // plugins: [createPersistedState()],
});
