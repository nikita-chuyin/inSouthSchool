<template>
	<view class="sWhole_box">
		<view class="login_box">
			<image src="../../../static/search.png" mode=""></image>
			<text>{{loginTitle}}</text>
		</view>
		<view class="score_container">
			<text class="score_text">考号</text>
			<input type="text" placeholder="请输入15位考试或笔试准考证号" :value="stuNum" />
		</view>
		<view class="score_container">
			<text class="score_text">姓名</text>
			<input placeholder="超过3个字,可只输入前3个字" :value="password" />
		</view>
		<slot></slot>
		<button class="btn_type" @click="login">{{btnText}}</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				loginTitle: '四六级查询',
				stuNum: '',
				password: '',
				btnText: '查询'
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
					});
					uni.navigateTo({
						url: '../cetScore.vue/cetScore.vue'
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
@import url("../../template/template.css");
</style>
