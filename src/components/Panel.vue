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
            src="https://cdn.vuetifyjs.com/images/cards/halcyon.png"
            height="125px"
            contain
            position="right"
            class="mr-2"
          ></v-img>
        </v-flex>
      </v-layout>
      <v-divider light></v-divider>
      <v-card-actions>
        <v-btn>
          <v-icon>add_shopping_cart</v-icon>
          ADD TO CART {{album.price}}
        </v-btn>
        <v-spacer></v-spacer>
        <v-btn class="mr-1" @click="viewAlbum()">DETAILS</v-btn>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script>
export default {
  props: {
    album: null
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
