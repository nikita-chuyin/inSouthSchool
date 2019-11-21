<template>
	<view>
		<!-- logo部分 -->
		<view class="co-logo">
			<image src="../../static/logo.png" mode="" class="logo"></image>
		</view>
		<!-- tip部分 -->
		<view class="co-tip">
			<view class="tip">登录南华大学教务在线</view>
		</view>
		<!-- 输入框部分 -->
		<view class="co-co-input">
			<view class="co-input">
				<input type="number" maxlength="11" placeholder="学号" class="input" placeholder-class="username-placeholder" @input="onUserNameInput">
			</view>
			<view class="co-input">
				<input type="text" password="true" placeholder="密码" class="input" placeholder-class="username-placeholder" @input="onPasswordInput">
			</view>
		</view>
		<!-- 登录按钮 -->
		<view class="co-login">
			<button class="login-button" open-type="getUserInfo" @getuserinfo="onLogin"></button>
			<image src="../../static/login.png" mode="" class="login-image"></image>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				username: null,
				password: null
			}
		},
		methods: {
			// 输入框用户名
			onUserNameInput(event){
				this.username = event.target.value
			},
			// 输入框密码
			onPasswordInput(event){
				console.log(event.target.value)
				this.password = event.target.value
			},
			// 如果用户尚未授权先提醒用户授权
			onLogin(){
				
			}
		}
	}
</script>

<style>
.co-logo{
	margin-top: 200rpx;
	width: 100%;
	height: 200rpx;
}
.logo{
	display: block;
	width: 200rpx;
	height: 200rpx;
	margin: 0 auto;
	/* background-color: #0081FF; */
}
.co-tip{
	margin-top: 40rpx;
	width: 100%;
	height: 80rpx;
}
.tip{
	font-size: 38rpx;
	font-weight: 700;
	line-height: 80rpx;
	text-align: center;
}
.co-co-input{
	width: 100%;
	margin-top: 60rpx;
}
.co-input{
	margin-top: 35rpx;
	width: 100%;
	height: 110rpx;
}
.input{
	width: 75%;
	height: 110rpx;
	margin: 0 auto;
	border-radius: 60rpx;
	background-color: #FFFFFF;
	display: block;
	text-align: center;
	font-size: 34rpx;
}
.username-placeholder{
	font-size: 34rpx;
	line-height: 110rpx;
	text-align: center;
}
.co-login{
	margin-top: 80rpx;
	width: 100%;
	position: relative;
}
.login-button{
	display: block;
	border-radius: 50%;
	height: 150rpx;
	width: 150rpx;
	margin: 0 auto;
}
.login-image{
	position: absolute;
	border-radius: 50%;
	height: 150rpx;
	width: 150rpx;
	left: 300rpx;
	top: 0;
}
</style>
