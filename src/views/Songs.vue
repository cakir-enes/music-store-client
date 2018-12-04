<template>
  <v-layout row class="pt-4">
    <v-flex xs12 sm6 offset-sm3>
      <v-card>
        <v-toolbar color="black" dark>
          <v-toolbar-title>Songs</v-toolbar-title>
          <v-subheader>
            {{this.albumName}}-
            <small>{{this.artist.name}}</small>
          </v-subheader>
          <v-spacer></v-spacer>
        </v-toolbar>
        <v-list>
          <v-list-tile v-for="song in songs" :key="song.id">
            <v-list-tile-title v-text="song.name"></v-list-tile-title>
            {{song.length}}m
          </v-list-tile>
        </v-list>
        <v-divider></v-divider>
        <v-list-tile>
          <v-list-tile-content>
            <v-btn>
              <v-icon>add_shopping_cart</v-icon>ADD TO CART
            </v-btn>
          </v-list-tile-content>
          {{this.albumLen}}
        </v-list-tile>
      </v-card>
    </v-flex>
  </v-layout>
</template>

<script>
import router from "../router";
import HTTP from "../http";

export default {
  data() {
    return {
      songs: [],
      artist: "",
      albumName: null,
      albumLen: 0
    };
  },
  beforeMount() {
    this.fetchSongs();
  },
  methods: {
    fetchSongs() {
      HTTP()
        .get(`/albums/${this.$route.params.id}`)
        .then(resp => {
          this.songs = resp.data.songs;
          this.artist = resp.data.artist;
          this.albumName = resp.data.name;
          this.albumLen = resp.data.length;
        })
        .catch(e => console.log(e));
    }
  }
};
</script>

<style>
</style>
