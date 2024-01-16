// Utilities
import { defineStore } from 'pinia'
import exercisesJson from "@/assets/exercises.json";
import practiceJson from "@/assets/practice.json";
import { Exercise } from "@/interfaces/main";
import {ref} from "vue";

export const useAppStore = defineStore(
  'app',
  () => {
    const exercises = ref(exercisesJson as unknown as Exercise[]);
    const practice = ref(practiceJson);
    const favorites = ref([]);

    return {
      exercises,
      practice,
      favorites
    }
});
