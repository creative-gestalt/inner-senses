import { defineStore } from "pinia";
import exercisesJson from "@/assets/exercises.json";
import practiceJson from "@/assets/practice.json";
import { Exercise } from "@/interfaces/main";

export const useStore = defineStore({
  id: "main",
  state: () => ({
    exercises: exercisesJson as unknown as Exercise[],
    practice: practiceJson,
    favorites: [],
  }),
  getters: {
    getExercises: (state) => state.exercises,
    getPractice: (state) => state.practice,
  },
  actions: {
    // setExercises(): void {
    //   this.exercises = exercisesJson;
    // },
  },
});
