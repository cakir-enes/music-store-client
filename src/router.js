import Vue from 'vue';
import Router from 'vue-router';
import Albums from './views/Albums.vue';
import Register from './views/Register.vue';
import Login from './views/Login.vue';
import Songs from './views/Songs.vue';
import Cart from './views/Cart.vue';
import OrderHistory from './views/OrderHistory.vue';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'albums',
      component: Albums,
    },
    {
      path: '/albums/:id',
      name: 'songs',
      component: Songs,
    },
    {
      path: '/cart',
      name: 'cart',
      component: Cart,
    },
    {
      path: '/register',
      name: 'register',
      component: Register,
    },
    {
      path: '/login',
      name: 'login',
      component: Login,
    },
    {
      path: '/history',
      name: 'history',
      component: OrderHistory,
    },
  ],
});
