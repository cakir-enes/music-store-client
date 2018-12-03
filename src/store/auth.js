import router from '../router';
import HTTP from '../http';

export default {
  namespaced: true,
  state: {
    registerUsername: null,
    registerPassword: null,
    token: null,
    registerError: null,
  },
  actions: {
    register({ commit, state }) {
      commit('setRegisterError', null);

      return HTTP().post('/auth/register', {
        username: state.registerUsername,
        password: state.registerPassword,
      })
        .then(({ data }) => {
          commit('setToken', data.token);
          router.push('/');
        })
        .catch(() => {
          commit('setRegisterError', 'An error has occured trying to create your account.');
        });
    },
    logout({ commit }) {
      commit('setToken', null);
      router.push('/login');
    },
  },
  getters: {
    isLogggedIn(state) {
      return !!state.token;
    },
  },
  mutations: {
    setRegisterError(state, error) {
      state.registerError = error;
    },
    setToken(state, token) {
      state.token = token;
    },
    setRegisterUsername(state, username) {
      state.registerUsername = username;
    },
    setRegisterPassword(state, password) {
      state.registerPassword = password;
    },
  },
};
