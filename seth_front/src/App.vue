<template>
  <v-app>
    <v-app-bar :height="isIOS ? 90 : 56" dense app>
      <v-spacer></v-spacer>
      <v-btn :style="{ transform: isIOS ? 'translateY(20px)' : '' }" icon>
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
  computed: {
    isIOS(): boolean {
      // return true;
      return this.fullscreenBuffer === 80;
    },
    fullscreenBuffer(): number {
      return navigator.platform.match(/iPhone|iPod|iPad/) ? 80 : 56;
    },
  },
});
</script>
<style lang="scss">
$scrollbar-bg-color: #171717;
$scrollbar-thumb-color: #898989;
$app-title-bar-width: 125px;

html {
  background-color: black;
  overflow-x: hidden;
}
::-webkit-scrollbar {
  width: 10px;
  background-color: $scrollbar-bg-color;
}
::-webkit-scrollbar-thumb {
  border-radius: 50px;
  background-color: $scrollbar-thumb-color;
}
.v-app-bar-title__content {
  width: $app-title-bar-width !important;
}
.ios-overlay {
  height: 125px;
  width: 125px;
  border-radius: 15px !important;
}
</style>
