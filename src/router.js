import Vue from 'vue';
import Router from 'vue-router';
import Albums from './views/Albums.vue';
import Register from './views/Register.vue';
import Login from './views/Login.vue';
import Songs from './views/Songs.vue';
import Cart from './views/Cart.vue';

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
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue'),
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
  ],
});
