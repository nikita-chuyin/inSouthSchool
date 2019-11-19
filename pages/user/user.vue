<template>
	<view>
		<!-- avatar、nickName部分 -->
		<view class="blueBackground" style="position: relative;">
			<view class="nickNamePosition big-white-bold">
				theBest
			</view>
			<view class="statusPosition small-white-bold">(身份未认证)</view>
			<button open-type="getUserInfo" @getuserinfo="onGotUserInfo" class="avatar avatarPosition"></button>
		</view>
		<!-- main部分 -->
		<view class="main">
			<!-- 九宫格部分 -->
			<view class="co-grid">
				<view class="grid">
					<image src="../../static/collection.png" class="grid-image" mode=""></image>
					<text class="grid-text">我的收藏</text>
				</view>
				<view class="grid">
					<image src="../../static/workorder.png" class="grid-image" mode=""></image>
					<text class="grid-text">我的工单</text>
				</view>
				<view class="grid">
					<image src="../../static/collection.png" class="grid-image" mode=""></image>
					<text class="grid-text">我的收藏</text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	const app = getApp()
	export default {
		data() {
			return {
				
			}
		},
		onLoad() {
		
		},
		methods: {			
			// 获取用户信息
			onGotUserInfo(e) {
			    console.log(e.detail.userInfo)
			    app.globalData.userInfo = e.detail.userInfo
			    uni.login({
			      success(res){
			        uni.request({
			          url: app.globalData.host + app.globalData.apiVersion + "auth/qq_login",
			          method: "POST",
			          data: {
			            code: res.code,
			            userInfo: app.globalData.userInfo
			          },
			          success(result){
			            console.log(result)
			          }
			        })
			      }
			    })
			  }
		}
	}
</script>

<style>
.co-grid{
	width: 100%;
	height: 180rpx;
}

.grid{
	width: calc(100% / 3);
	height: 100%;
	display: inline-block;
	background-color: #007AFF;
}

.grid-text{
	display: block;
	text-align: center;
	/* background-color: #007AFF; */
	line-height: 130rpx;
	font-size: 30rpx;
}

.grid-image{
	display: block;
	width: 50rpx;
	height: 50rpx;
}

.blueBackground{
	height: 450rpx;
	width: 100%;
	background-color: #78acff;
}

.avatar{
	background-image: url("https://thirdqq.qlogo.cn/qqapp/1110027966/AB191ACFA7209F10E101AB096C0DEA84/100");
	/* background-repeat: repeat; */
	width: 190rpx;
	height: 190rpx;
	border-radius: 50%;
	box-shadow: 0rpx 0rpx 6rpx 8rpx rgb(255, 255, 255);
}

.avatarPosition{
	float: right;
	top: 50%;
	right: 5%;
}

.nickNamePosition{
	position: absolute;
	top: 50%;
	left: 5%;
}

.big-white-bold{
	font-size: 60rpx;
	font-weight: 700;
	color: #FFFFFF;
}

.statusPosition{
	position: absolute;
	bottom: 25%;
	left: 5%;
}

.small-white-bold{
	font-size: 24rpx;
	color: #FFFFFF;
}

.main{
	margin: 0 5% 0 5%;
}
</style>
