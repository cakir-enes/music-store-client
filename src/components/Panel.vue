<template>
  <div class="white elevation-2">
    <v-card color="white" flat tile>
      <v-layout row>
        <v-flex xs7>
          <v-card-title primary-title>
            <div class="box" align="left">
              <div class="headline">{{album.name}}</div>
              <div>{{album.artist}}</div>
              <div>({{album.date}})</div>
              <div>{{album.length}}m</div>
            </div>
          </v-card-title>
        </v-flex>
        <v-flex xs5>
          <v-img
            v-bind:src="this.album.coverUrl"
            height="125px"
            contain
            position="right"
            class="mr-2"
          ></v-img>
        </v-flex>
      </v-layout>
      <v-divider light></v-divider>
      <v-card-actions>
        <div>
          <v-btn @click="dialog = !isLoggedIn">
            <v-icon>add_shopping_cart</v-icon>
            Add to Cart {{album.price}}
          </v-btn>
          <v-dialog v-model="dialog" max-width="290">
            <v-card>
              <v-card-title class="headline">Login First</v-card-title>
              <v-card-text>
                <v-btn @click="dialog = false">OK</v-btn>
              </v-card-text>
            </v-card>
          </v-dialog>
        </div>
        <v-spacer></v-spacer>
        <v-btn class="mr-1" @click="viewAlbum()">DETAILS</v-btn>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
export default {
  props: {
    album: null
  },
  computed: {
    ...mapGetters("auth", ["isLoggedIn"])
  },
  data() {
    return {
      dialog: false,
      clicked: false
    };
  },
  methods: {
    viewAlbum() {
      this.$router.push(`/albums/${this.album.id}`);
      // this.$router.push("/register");
    }
  }
};
</script>

<style>
</style>
