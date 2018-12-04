<template>
  <div class="white elevation-2">
    <v-card color="white" flat tile>
      <v-layout row>
        <v-flex xs7>
          <v-card-title primary-title>
            <div>
              <div class="headline">{{ title }}</div>
              <div>{{ artist }}</div>
              <div>{{ year }}</div>
            </div>
          </v-card-title>
        </v-flex>
        <v-flex align-end>
          <v-img src="https://cdn.vuetifyjs.com/images/cards/halcyon.png" height="125px" contain></v-img>
        </v-flex>
      </v-layout>
      <v-card-actions>
        <v-btn flat>ADD TO CART</v-btn>
        <v-spacer></v-spacer>
        <v-btn flat @click="viewAlbum()">DETAILS</v-btn>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script>
export default {
  props: {
    title: String,
    artist: String,
    year: String,
    id: String
  },
  methods: {
    viewAlbum() {
      console.log(`Name: ${this.title} Id: ${this.id}`);
    }
  }
};
</script>

<style>
</style>
