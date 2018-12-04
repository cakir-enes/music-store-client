<template>
  <v-layout row class="pt-4">
    <v-flex xs12 sm6 offset-sm3>
      <v-card>
        <v-toolbar color="black" dark>
          <v-toolbar-title>Cart</v-toolbar-title>
          <v-spacer></v-spacer>
        </v-toolbar>
        <v-list>
          <v-list-tile v-for="album in getItems" :key="album.id">
            <v-list-tile-title v-text="album.name"></v-list-tile-title>
            {{album.price}}
          </v-list-tile>
        </v-list>
        <v-divider></v-divider>
        <v-list-tile>
          <v-list-tile-content>
            <v-btn @click="checkout(getUserId, getItems.map(al => al.id))">
              <v-icon>attach_money</v-icon>CHECKOUT
            </v-btn>
          </v-list-tile-content>
          ${{(getItems.reduce((acc, album) => acc + Number(album.price.replace('$', '')), 0))}}
        </v-list-tile>
        <v-alert type="error" :value="failed">Checkout Failed</v-alert>
      </v-card>
    </v-flex>
  </v-layout>
</template>

<script>
import router from "../router";
import HTTP from "../http";
import { mapGetters, mapActions, mapState } from "vuex";

export default {
  computed: {
    ...mapGetters("auth", ["isLoggedIn", "getUserId"]),
    ...mapGetters("cart", ["getItems"])
  },
  data() {
    return {
      failed: false
    };
  },
  beforeMount() {
    this.failed = false;
  },
  methods: {
    ...mapActions("cart", ["resetCart"]),
    checkout(userId, items) {
      this.failed = false;
      this.$store.dispatch("cart/resetCart");
      let ret = HTTP()
        .post(`/orders`, {
          albums: items
        })
        .then(({ data }) => {
          this.failed = false;
          router.push("/");
        })
        .catch(() => {
          this.failed = true;
          console.log("error while checkout");
        });
    }
  }
};
</script>

<style>
</style>
