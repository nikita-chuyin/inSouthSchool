<template>
	<view>
		<login-module :loginTitle="loginTitle" :btnText="checkResult">
			
		</login-module>
		
	</view>
</template>

<script>
	import loginModule from '../../../template/loginModule.vue';
	import wyjTextCode from '../../../../components/wyj-text-code/wyj-text-code.vue';
	export default {
		data() {
			return {
				loginTitle: '登陆本科生教务系统',
				checkResult: '查成绩'
			}
		},
		components:{
			loginModule,
			wyjTextCode
		},
		methods: {
			
		}
	}
</script>

<style>
	@import url("../../../template/template.css");
</style>
