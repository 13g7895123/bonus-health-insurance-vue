<script setup>
import TaskPage from './pages/TaskPage.vue';
import Navbar from './components/Navbar.vue';
import Sidebar from './components/Sidebar.vue';
import NavbarRight from './components/NavbarRight.vue';

// const isLogin = false

</script>

<template>
  <div class="flex overflow-hidden">
    <!-- left -->
    <Sidebar />
    <!-- right -->
    <div class="w-[calc(100%-15rem)] flex flex-col">
      <!-- navbar -->
      <NavbarRight />
      <!-- content -->
      <div class="h-[calc(100%-2.5rem)] flex justify-center items-center">
        <router-view/>
      </div>
    </div>    
  </div>  
</template>

<style scoped>
</style>
