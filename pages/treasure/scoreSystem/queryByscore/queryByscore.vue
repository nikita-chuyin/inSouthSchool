<template>
	<view>
		<login-module :loginTitle="loginTitle" :btnText="checkResult">
		</login-module>
	</view>
</template>

<script>
	import loginModule from '../../../template/loginModule.vue';
	import app from '../../../../App.vue';
	export default {
		data() {
			return {
		 		loginTitle: '课程给分查询',
				checkResult : '查询'
			}
		},
		components:{
			loginModule
		},
		methods: {
			
		}
	}
</script>

<style>

</style>
