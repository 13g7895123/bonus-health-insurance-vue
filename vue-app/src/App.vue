<script setup>
import { ref } from 'vue'
import { useLoginStore } from './stores/login'
import { storeToRefs } from "pinia"
import TaskPage from './pages/TaskPage.vue';
import Navbar from './components/Navbar.vue';
import Sidebar from './components/Sidebar.vue';
import NavbarRight from './components/NavbarRight.vue';

const loginStore = useLoginStore()
const { login } = storeToRefs(loginStore)

console.log('login status: ' + login.value);

const isLogin = login.value                       // 預設為非登入
const navbarWidth = ref('')                       // 預設值(登入後狀態)

navbarWidth.value = isLogin ? 'w-[calc(100%-15rem)]' : 'w-full'

// console.log(isLogin);
console.log(navbarWidth.value);

</script>

<template>
  <div class="flex overflow-hidden">
    <!-- left -->
    <Sidebar v-show="isLogin"/>
    <!-- right -->
    <div class="flex flex-col" :class="navbarWidth">
      <!-- navbar -->
      <div v-show="isLogin === true">
        <NavbarRight/>
      </div>
      <!-- content -->
      <div class="h-[calc(100%-2.5rem)] flex justify-center items-center">
        <router-view/>
      </div>
    </div>    
  </div>  
</template>

<style scoped>
</style>
