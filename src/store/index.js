import Vue from 'vue';
import Vuex from 'vuex';
// import createPersistedState from 'vuex-persistedstate';

import auth from './auth';
import albums from './albums';


Vue.use(Vuex);

export default new Vuex.Store({
  strict: true,
  state: {
    baseUrl: '/api',
  },
  modules: {
    auth, albums,
  },
  mutations: {},
  actions: {},
  // plugins: [createPersistedState()],
});
