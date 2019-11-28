<template>
	<view>
		<login-module :loginTitle="loginTitle"></login-module>
	</view>
</template>

<script>
	import loginModule from '../../template/loginModule.vue'
	export default {
		data() {
			return {
				stuNum: '',
				password: '',
				loginTitle: '登录图书馆'
			}
		},
		methods: {
			
		},
		components:{
			loginModule
		}
	}
</script>

<style>
@import url("../../template/template.css");
</style>
