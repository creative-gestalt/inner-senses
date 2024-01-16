<template>
  <v-app-bar flat>
    <v-app-bar-title style="color: rgb(197, 147, 92)">
      Inner Senses
    </v-app-bar-title>
    <v-spacer></v-spacer>
    <v-btn @click="router.push('/')" color="rgb(197, 147, 92)" icon>
      <v-icon>mdi-home</v-icon>
    </v-btn>
  </v-app-bar>
</template>

<script lang="ts" setup>
import {useRouter} from "vue-router";

const router = useRouter();
</script>
