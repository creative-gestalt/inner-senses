<template>
  <v-card
    width="200"
    height="200"
    :class="`d-flex justify-center ${compSide}`"
    :to="props.to"
    :image="compImg"
    link
  >
    <v-card-title class="justify-center">
      <span style="color: rgb(197, 147, 92)">{{ props.title }}</span>
    </v-card-title>
  </v-card>
</template>

<script lang="ts" setup>
import {computed} from "vue";

const props = defineProps<{
  title: string;
  side: string;
  to: string;
  img: string;
}>();

const compImg = computed(() => {
  return new URL(`/src/assets/tiles/${props.img}.png`, import.meta.url).href;
});

const compSide = computed(() => {
  return props.side === "left" ? "float-start" : "float-end";
});
</script>
