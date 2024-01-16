<template>
  <div>
    <ExercisesList @itemClicked="handleClick" />
    <v-dialog
      v-model="dialog"
      fullscreen
    >
      <v-card class="pt-5">
        <v-toolbar dark>
          <v-btn icon @click="dialog = false">
            <v-icon>mdi-close</v-icon>
          </v-btn>

          <v-toolbar-title>{{ title }}</v-toolbar-title>
          <v-spacer></v-spacer>
          <v-toolbar-items>
            <v-btn
              variant="text"
              @click="dialog = false"
            >
              Favorite
            </v-btn>
          </v-toolbar-items>
        </v-toolbar>

        <v-card-text
          style="color: rgb(197, 147, 92)"
          v-for="(line, index) in description" :key="index"
        >
          {{ line }}
        </v-card-text>
      </v-card>
    </v-dialog>
  </div>
</template>

<script lang="ts" setup>
import {ref} from "vue";
import ExercisesList from "@/components/ExercisesList.vue";

const dialog = ref(false);
const description = ref('');
const title = ref('');

function handleClick(data: any): void {
  dialog.value = true;
  description.value = data.description.split(/\r\n\r\n/g);
  title.value = data.title;
}
</script>

<style lang="scss">
.v-card {
  display: flex !important;
  flex-direction: column;
}
.v-card__text {
  flex-grow: 1;
  overflow: auto;
}
</style>
