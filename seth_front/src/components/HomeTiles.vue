<template>
  <div>
    <v-row class="mt-5">
      <v-col cols="6">
        <Tile
          :title="tiles[0]"
          side="right"
          img="geometric-01"
          to="/search"
        />
      </v-col>
      <v-col cols="6">
        <Tile
          :title="tiles[1]"
          side="left"
          img="geometric-02"
          to="/exercises"
        />
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="6">
        <Tile
          :title="tiles[2]"
          side="right"
          img="geometric-03"
          to="/practices"
        />
      </v-col>
      <v-col cols="6">
        <Tile
          :title="tiles[3]"
          side="left"
          img="geometric-04"
          to="/quotes"
        />
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="6">
        <Tile
          :title="tiles[4]"
          side="right"
          img="geometric-05"
          to="/about"
        />
      </v-col>
      <v-col cols="6">
        <Tile
          :title="tiles[5]"
          side="left"
          img="geometric-06"
          to="/settings"
        />
      </v-col>
    </v-row>
  </div>
</template>

<script lang="ts" setup>
import {ref} from "vue";
import Tile from "@/components/Tile.vue";

const tiles = ref([
  "Search",
  "Exercises",
  "Practices",
  "Saved Quotes",
  "About",
  "Settings",
]);
</script>
