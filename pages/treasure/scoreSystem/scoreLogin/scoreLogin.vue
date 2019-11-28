<template>
	<view>
		<login-module :loginTitle="loginTitle" :btnText="checkResult">
			<wyj-text-code></wyj-text-code>
		</login-module>
		
	</view>
</template>

<script>
	import loginModule from '../../../template/loginModule.vue';
	import wyjTextCode from '../../../../components/wyj-text-code/wyj-text-code.vue';
	import app from '../../../../App.vue';
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
			
		},
		onLoad() {
			console.log(userInfo);
			// let UserInfo = app.globalData.userInfo;
			// if(UserInfo){
			// 	uni.showModal({
			// 		title:'没有权限',
			// 		content: '您还未完成身份认证，请前往个人中心绑定'
			// 	})
			// }
		}
	}
</script>

<style>
	@import url("../../../template/template.css");
</style>
