<template>
  <home-tiles />
</template>

<script lang="ts">
import Vue from "vue";
import HomeTiles from "@/components/HomeTiles.vue";

export default Vue.extend({
  name: "HomeView",

  components: {
    HomeTiles,
  },
});
</script>
