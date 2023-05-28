import { ref, reactive, computed } from "vue"
import { defineStore } from "pinia"

export const useLoginStore = defineStore('loginStore', () => {

    const login = ref(false)

    return { login }
})