<template>
  <v-card
    width="200"
    height="200"
    :class="`d-flex justify-center ${compSide}`"
    :to="to"
    :img="compImg"
    hover
  >
    <v-card-title class="justify-center">
      {{ title }}
    </v-card-title>
  </v-card>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "TileComponent",
  props: {
    title: String,
    side: String,
    to: String,
    img: String,
  },
  data: () => ({
    //
  }),
  computed: {
    compImg(): string {
      return require(`@/assets/tiles/${this.img}.png`);
    },
    compSide(): string {
      return this.$props.side === "left" ? "float-start" : "float-end";
    },
  },
});
</script>
