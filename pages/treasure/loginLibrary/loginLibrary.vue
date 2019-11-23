<template>
	<view>
		<login-module></login-module>
	</view>
</template>

<script>
	import loginModule from '../../template/loginModule.vue'
	export default {
		data() {
			return {
				stuNum: '',
				password: ''
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
