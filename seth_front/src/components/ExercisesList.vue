<template>
  <v-data-iterator :items="exercises" :page="page">
    <template
      v-for="item of exercises"
      :key="item.name"
      >
      <v-card
        class="my-2 ma-auto"
        width="90%"
        @click="$emit('itemClicked', { description: item.direction, title: item.name })"
        variant="tonal"
      >
        <v-card-title class="list-item">
          <span style="color: rgb(197, 147, 92)">
            {{ item.name }}
            <span style="color: rgb(36, 164, 255)">{{
                item.favorite ? "●" : ""
              }}</span>
          </span>
        </v-card-title>
      </v-card>
    </template>
  </v-data-iterator>
</template>

<script lang="ts" setup>
import {storeToRefs} from "pinia";
import {useAppStore} from "@/store/app";
import {ref} from "vue";

const appStore = useAppStore();
const { exercises } = storeToRefs(appStore);
const page = ref(1);
</script>
<style lang="scss">
.list-item {
  font-size: 12px !important;
}
</style>
