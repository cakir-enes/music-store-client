<template>
  <v-layout row class="pt-4">
    <v-flex xs12 sm6 offset-sm3>
      <v-card>
        <v-toolbar color="black" dark>
          <v-toolbar-title>Albums</v-toolbar-title>
        </v-toolbar>
          <v-list v-for="album in this.albums" :key="album.id">
              <v-toolbar color="black" dark>
                <v-toolbar-title>{{album.name}}</v-toolbar-title>
            </v-toolbar>
            <v-list-tile v-for="song in album.songs" :key="song.id">
                <v-list-tile-title v-text="song.name"></v-list-tile-title>
                    {{song.length}}m
          </v-list-tile>
        </v-list>
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
      albums: null
    };
  },
  beforeMount() {
    this.getAlbumDetail()
  },
  methods: {
      getAlbumDetail() {
          console.log(this.$route.params.id)
        HTTP()
        .get(`/orders/${this.$route.params.id}`)
        .then(resp => this.albums = resp.data[0].albums)
      },
  }
};
</script>

<style>
</style>
