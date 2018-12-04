
export default {
  namespaced: true,
  state: {
    items: [],
  },
  actions: {
    addItem({ commit }, item) {
      commit('addToCart', item);
    },
    resetCart({ commit }) {
      commit('emptyCart');
    },
  },
  getters: {
    getNumOfItems(state) {
      return state.items.length;
    },
    getItems(state) {
      return state.items;
    },
  },
  mutations: {
    addToCart(state, item) {
      state.items.push(item);
    },
    emptyCart(state) {
      state.items = [];
    },
  },
};
