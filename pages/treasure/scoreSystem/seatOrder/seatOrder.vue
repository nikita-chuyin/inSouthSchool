<template>
	<view class="seat_order_box">
		<view class="seat_container">
			<text class="high_title">在南华</text>
			<text class="sub_title">我排名最高的居然是...</text>
			<input type="text"  />
			<view>
				<text>感谢老师给了我分的高分</text>
				<text>让我这门课在全校排名第</text>
			</view>
		</view>
		<view class="name_plate">
			成绩排名报告
		</view>
		<view class="share_box">
			<text>我有 门课全校排名前10%</text>
			<text class="green_font">分享至10位好友（不限南华）解锁完整报告</text>
			<button>分享给好友</button>
		</view>
		<view class="share_number">已分享{{sharedNum}}位</view>
	</view>
</template>

<script>
	import app from '../../../../App.vue';
	export default {
		data() {
			return {
				sharedNum: 0
			}
		},
		methods: {
			
		},
		onLoad() {
			let userInfo = app.globalData.userInfo;
			if(userInfo == null){
				uni.showModal({
					content: '登陆失败，请返回重试~'
				})
			}
		}
	}
</script>

<style>

.seat_container{
	display: flex;
	flex-flow: column;
	margin-top: -2px;
	width: 100%;
	height: 274px;
	background: #4CD964;
	color: white;
	font-size: 16px;
	margin-top: -12px;
}
.seat_container input{
	width: 80%;
	height: 68px;
	box-shadow: 0 0 1px 1px gray;
	margin-left: 15px;
	background: white;
	border-radius: 20px;
}
.seat_container view{
	display: flex;
	flex-flow: column;
	height: 100px;
	line-height: 100px;
	text-align: center;
}
.seat_container .high_title{
	font-size: 30px;
}
.seat_container .sub_title,.high_title{
	font-weight: 500;
	padding: 15px;
}
.name_plate{
	z-index: 99;
	position: fixed;
	top: 48%;
	left: 23%;
	height:40px;
	line-height: 40px;
	width: 58%;
	background: #333333;
	color: white;
	font-size: 20px;
	font-weight: 500;
	text-align: center;
	border-radius: 5px;
}
.share_box{
	z-index: 90;
	position: fixed;
	top: 52%;
	left: 9%;
	display: flex;
	flex-flow: column;
	align-items: center;
	justify-content: space-around;
	width: 83%;
	height: 120px;
	border-radius: 5px;
	background: white;
	padding-top: 18px;
	line-height: 27px;
} 
.share_box .green_font{
	color: #1ABD6C;
}
.share_box button{
	width: 100%;
	height: 40px;
	background: #1ABD6C;
}
.share_number{
	position: fixed;
	left:33%;
	top: 85%;
	font-size: 20px;
	font-weight: 400;
}
</style>
