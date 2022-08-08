<template>
  <div>
    <exercises-list @itemClicked="handleClick" />
    <v-bottom-sheet v-model="bottomSheet">
      <v-card class="pt-5" height="80vh" color="grey darken-4">
        <v-card-text>
          <span style="color: rgb(197, 147, 92)">{{ compDescription }}</span>
        </v-card-text>
      </v-card>
    </v-bottom-sheet>
  </div>
</template>

<script lang="ts">
import Vue from "vue";
import ExercisesList from "@/components/ExercisesList.vue";

export default Vue.extend({
  name: "ExercisesView",
  data: () => ({
    bottomSheet: false,
    description: "",
  }),
  components: {
    ExercisesList,
  },
  methods: {
    handleClick(value: string): void {
      this.bottomSheet = true;
      this.description = value;
    },
  },
  computed: {
    compDescription(): string {
      return this.description;
    },
  },
});
</script>
<style lang="scss">
html {
  overflow: hidden !important;
}
.v-card {
  display: flex !important;
  flex-direction: column;
}
.v-card__text {
  flex-grow: 1;
  overflow: auto;
}
</style>
