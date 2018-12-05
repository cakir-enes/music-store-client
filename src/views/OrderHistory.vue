<template>
  <v-layout row class="pt-4">
    <v-flex xs12 sm6 offset-sm3>
      <v-card>
        <v-toolbar color="black" dark>
          <v-toolbar-title>Order History</v-toolbar-title>
          <v-spacer></v-spacer>
        </v-toolbar>
        <v-list>
          <v-list-tile v-for="order in this.orders" :key="order.id">
            <v-list-tile-title v-text="order.created.substr(0, 10)"></v-list-tile-title>
            {{order.totalPrice}}
          </v-list-tile>
        </v-list>
        <v-divider></v-divider>
        <v-list-tile>
            Total: ${{orders.reduce((acc, ord) => acc + Number(ord.totalPrice.replace('$','')), 0)}}
        </v-list-tile>
      </v-card>
    </v-flex>
  </v-layout>
</template>

<script>
import router from "../router";
import HTTP from "../http";
import { mapGetters, mapActions, mapState } from "vuex";
import store from '../store/index.js';

export default {
  computed: {
    ...mapGetters("auth", ["getUserId"]),
  },
  data() {
    return {
      orders: null
    };
  },
  mounted() {
    this.getOrderHistory(this.getUserId)
    // console.log(this.orders);
  },
  methods: {
      getOrderHistory(userId) {
          let x = HTTP()
          .get('/orders/user/' + userId)
          .then((resp) => this.orders = resp.data.orders)
          .catch(e => console.log(e));
      },
  }
};
</script>

<style>
</style>
