<template>
  <v-toolbar>
    <v-toolbar-title class="mr-4">Music Store</v-toolbar-title>
    <v-toolbar-items>
      <v-btn flat>Albums</v-btn>
    </v-toolbar-items>
    <v-spacer></v-spacer>
    <v-toolbar-items class="hidden-sm-and-down">
      <v-btn flat to="/register" v-if="!isLogggedIn">
        <v-icon class="mr-2">account_box</v-icon>Register
      </v-btn>
      <v-btn flat v-if="!isLogggedIn">
        <v-icon class="mr-2">fingerprint</v-icon>Login
      </v-btn>
      <v-btn flat v-if="isLogggedIn">
        <v-icon class="mr-2">exit_to_app</v-icon>Logout
      </v-btn>
    </v-toolbar-items>
  </v-toolbar>
</template>

<script>
import { mapGetters } from "vuex";
export default {
  computed: {
    ...mapGetters("auth", ["isLogggedIn"])
  }
};
</script>

<style>
</style>
