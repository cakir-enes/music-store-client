<template>
  <v-container>
    <v-layout row wrap>
      <v-flex xs6 offset-xs3>
        <div>
          <h1>Login</h1>
          <v-text-field
            label="Username"
            placeholder="Username"
            :value="loginUsername"
            @input="setLoginUsername"
          ></v-text-field>

          <v-text-field
            label="Password"
            placeholder="Password"
            type="password"
            autocomplete="new-password"
            :value="loginPassword"
            @input="setLoginPassword"
          ></v-text-field>
          <v-alert type="error" :value="loginError">{{loginError}}</v-alert>
          <v-btn @click="login">
            <v-icon class="mr-2">fingerprint</v-icon>Login
          </v-btn>
        </div>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import { mapState, mapMutations, mapActions } from "vuex";

export default {
  computed: {
    ...mapState("auth", ["loginUsername", "loginPassword", "loginError"])
  },
  methods: {
    ...mapMutations("auth", ["setLoginUsername", "setLoginPassword"]),
    ...mapActions("auth", ["login"])
  }
};
</script>

<style>
</style>
