<script setup>
import { ref } from 'vue'
import TaskPage from './pages/TaskPage.vue';
import Navbar from './components/Navbar.vue';
import Sidebar from './components/Sidebar.vue';
import NavbarRight from './components/NavbarRight.vue';

const isLogin = ref(false)                        // 預設為非登入
const navbarWidth = ref('')                       // 預設值(登入後狀態)

navbarWidth.value = isLogin.value ? 'w-[calc(100%-15rem)]' : 'w-full'

console.log(isLogin.value);
console.log(navbarWidth.value);

</script>

<template>
  <div class="flex overflow-hidden">
    <!-- left -->
    <Sidebar v-show="isLogin"/>
    <!-- right -->
    <div class="flex flex-col" :class="navbarWidth">
      <!-- navbar -->
      <NavbarRight v-show="isLogin"/>
      <!-- content -->
      <div class="h-[calc(100%-2.5rem)] flex justify-center items-center">
        <router-view/>
      </div>
    </div>    
  </div>  
</template>

<style scoped>
</style>
