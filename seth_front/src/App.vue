<template>
  <v-app>
    <v-app-bar dense app>
      <v-spacer></v-spacer>
      <v-btn icon>
        <v-icon color="orange" @click="$router.push('/home')" link>
          mdi-home
        </v-icon>
      </v-btn>
    </v-app-bar>

    <v-main>
      <router-view />
    </v-main>
  </v-app>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "App",

  data: () => ({
    //
  }),
});
</script>
