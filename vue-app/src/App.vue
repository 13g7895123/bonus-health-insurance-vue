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
const isLogin = login.value                       // 預設為非登入
const navbarWidth = ref('')                       // 預設值(登入後狀態)
const contentHeight = ref('')

navbarWidth.value = isLogin ? 'w-[calc(100%-15rem)]' : 'w-screen'
contentHeight.value = isLogin ? 'h-[calc(100%-2.5rem)]' : 'h-screen'

</script>

<template>
  <div class="flex overflow-hidden">
    <!-- left -->
    <Sidebar v-show="login.value "/>
    <!-- right -->
    <div class="flex flex-col" :class="navbarWidth">
      <!-- navbar -->
      <div v-show="login.value  === true"> <!-- 多包一層div去除warning -->
        <NavbarRight/>
      </div>
      <!-- content -->
      <div class="flex justify-center items-center" :class="contentHeight">
        <router-view/>
      </div>
    </div>    
  </div>  
</template>

<style scoped>
</style>
