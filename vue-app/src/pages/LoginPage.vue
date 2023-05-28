<script setup>
import { ref } from 'vue'
import { useLoginStore } from '../stores/login'
import { storeToRefs } from "pinia"

const loginStore = useLoginStore()
const { login } = storeToRefs(loginStore)
const isLogin = login.value                       // 預設為非登入
const loginBoxMt = ref('')

loginBoxMt.value = isLogin ? 'mt-[10dvh]' : 'mt-0'

const account = ref('')
const password = ref('')

const loginSubmit = () => {
    console.log(`${account}/${password}`);
}

</script>

<template>
    <div class='w-[700px] h-96 mx-auto border-2 border-slate-300 flex items-center shadow-lg' :class="loginBoxMt">
        <div class='w-[calc(100%-16rem)] h-full'>
            <img src='../assets/login_img.png' class='w-auto h-full object-cover object-right'>
        </div>
        <div class=' w-64 h-full border-l-2 border-slate-300 flex flex-col items-center px-3'>
            <div class='text-2xl font-bold mt-10'>會員登入</div>
            <input v-model="account" class='text-xl text-slate-700 pl-1 pb-1 outline-none border-b-2 border-slate-400 mt-10' placeholder='帳號'>
            <div class='relative flex'>
                <input v-model="password" class='text-xl pl-1 pb-1 outline-none border-b-2 border-slate-400 mt-5' placeholder='密碼' type='password'>
                <img src='../assets/hide.png' id='showPwd' class="w-6 h-6 absolute right-1 bottom-2 animate-3 cursor-pointer">
            </div>
            <div class='w-full mt-10 flex justify-center text-justify'>
                <div @click="loginSubmit" class=' w-32 h-auto flex justify-around items-center px-5 py-1 text-xl text-justify font-bold bg-green-300 animate-3 hover:bg-green-500 rounded-full cursor-pointer'>登入</div>
            </div>
            <div class='mt-5'>還不是會員?<a href='./register.php' class='cursor-pointer text-blue-600 animate-3 hover:font-extrabold hover:border-b-2 hover:border-blue-600 duration-100'>馬上加入!</a></div>
        </div>
    </div>
</template>