<template>
  <v-container grid-list-xl>
    <v-layout align-center justify-center row v-for="(batch, idx) in albums" :key="idx">
      <v-flex v-for="album in batch" :key="album.id">
        <Panel v-bind:album="album"></Panel>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
// @ is an alias to /src
import Panel from "@/components/Panel.vue";
import { mapGetters, mapActions, mapState } from "vuex";
import HTTP from "../http";
import albums from "../store/albums";

export default {
  components: {
    Panel
  },
  computed: {
    ...mapState("albums", ["albums"])
  },
  methods: {
    ...mapActions("albums", ["fetchAlbums"])
  },
  mounted() {
    this.fetchAlbums();
  }
};
</script>
