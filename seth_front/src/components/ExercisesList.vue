<template>
  <v-list>
    <v-list-item v-for="item of exercises" :key="item.name" class="my-2">
      <v-card
        color="grey darken-4"
        width="100%"
        @click="$emit('itemClicked', item.direction)"
        link
        hover
      >
        <v-card-title class="list-item">
          <span style="color: rgb(197, 147, 92)">{{ item.name }}</span>
        </v-card-title>
      </v-card>
    </v-list-item>
  </v-list>
</template>

<script lang="ts">
import Vue from "vue";
import { mapState } from "pinia";
import { useStore } from "@/stores/main";

export default Vue.extend({
  name: "ExercisesList",
  data: () => ({
    //
  }),
  computed: {
    ...mapState(useStore, { exercises: "getExercises" }),
  },
});
</script>
<style lang="scss">
.list-item {
  font-size: 12px;
}
</style>
