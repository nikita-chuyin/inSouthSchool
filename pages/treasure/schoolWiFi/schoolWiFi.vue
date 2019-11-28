<template>
	<view>
		<login-module :loginTitle="loginTitle" :imageSrc="imageSrc"></login-module>
	</view>
</template>

<script>
	import loginModule from '../../template/loginModule.vue'
	export default {
		data() {
			return {
				loginTitle: '校园网',
				imageSrc: '../../static/wifi.png'
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

</style>
