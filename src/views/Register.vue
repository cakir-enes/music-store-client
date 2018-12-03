<template>
  <v-container>
    <v-layout row wrap>
      <v-flex xs6 offset-xs3>
        <div>
          <h1>Register</h1>
          <v-text-field
            label="Username"
            placeholder="Username"
            :value="registerUsername"
            @input="setRegisterUsername"
          ></v-text-field>

          <v-text-field
            label="Password"
            placeholder="Password"
            type="password"
            autocomplete="new-password"
            :value="registerPassword"
            @input="setRegisterPassword"
          ></v-text-field>
          <v-alert type="error" :value="registerError">{{registerError}}</v-alert>
          <v-btn @click="register">
            <v-icon class="mr-2">account_circle</v-icon>Register
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
    ...mapState("auth", [
      "registerUsername",
      "registerPassword",
      "registerError"
    ])
  },
  methods: {
    ...mapMutations("auth", ["setRegisterUsername", "setRegisterPassword"]),
    ...mapActions("auth", ["register"])
  }
};
</script>

<style>
</style>
