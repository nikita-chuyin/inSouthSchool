<template>
	<view class="sWhole_box">
		<view class="login_box">
			<image :src="imageSrc" mode=""></image>
			<text>{{loginTitle}}</text>
		</view>
		<view class="score_container">
			<text class="score_text">{{studengNumber.number}}</text>
			<input type="text" :placeholder="studengNumber.placeHolder" :value="stuNum" @input="inputNum" />
		</view>
		<view class="score_container">
			<text class="score_text">{{studengPassword.password}}</text>
			<input password="true" :placeholder="studengPassword.placeHolder" :value="password" @input="inputPasswd" />
		</view>
		<slot></slot>
		<button class="btn_type" @click="login">{{btnText}}</button>
	</view>
</template>

<script>
	export default {
		name: 'loginModule',
		props:{
			btnText:{
				type: String,
				default: '登录'
			},
			loginTitle:{
				type: String,
				default: '登录'
			},
			imageSrc:{
				type: String,
				default: '../../static/authontication.png'
			},
			studengNumber:{
				type: Object,
				default: {'number':'学号',"placeHolder":"请输入学号"}
			},
			studengPassword:{
				type: Object,
				default: {'password':'密码',"placeHolder":"请输入密码"}
			}
		},
		data() {
			return {
				stuNum: '',
				password: ''
			}
		},
		methods: {
			inputNum(e){
				this.stuNum = e.detail.value;
				console.log(e);
			},
			inputPasswd(e){
				this.password = e.detail.value;
			},
			login(){
				if(this.stuNum || this.password){
					uni.showModal({
						content: '是否需要将图书馆密码保存到手机中，方便下次查询',
						cancelText: '不保存',
						confirmText: '保存'
					})
				
				}else{
					uni.showModal({
						title: '信息不全',
						content: '请填写完整信息',
						showCancel: true
					})
				}
				this.stuNum = this.password = '';
			}
		}
	}
</script>

<style scoped>
.sWhole_box  .login_box{
	display: flex;
	flex-flow: column;
	text-align: center;
	align-items: center;
	font-size: 18px;
	font-weight: 500;
	margin-bottom: 10px;
}

.login_box image{
	width: 95px;
	height: 95px;
}
.sWhole_box .score_container{
	padding: 3px 15px;
	height: 39px;
	line-height: 32px;
	margin-bottom: 2px;
	background: white;
	font-size: 12px;
	display: flex;
	vertical-align: bottom;
}
.score_container input{
	margin-left: 35px;
	margin-top: 4px;
}
.sWhole_box .btn_type{
	margin-top: 23px;
	width: 120px;
	background: #0081FF;
	color: white;
	border-radius: 5px;
}
.score_text{
	display: block;
	width: 55px;
}
</style>
