<template>
    <input class='text-xl pl-1 pb-1 outline-none border-b-2 border-slate-400 mt-10' placeholder="{{ placeholder }}">
</template>

<script setup>
defineProps({
  placeholder: String,
})
</script>