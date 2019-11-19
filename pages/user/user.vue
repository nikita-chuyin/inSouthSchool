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
				<view :class="items.status? 'grid-click' : 'grid'" v-for="(items, index) in pageList" :key="index" @touchstart="gridClick(items, index)" @touchend="gridEndClick(items, index)">
					<view class="co-image">
						<image :src="items.src" class="grid-image" mode=""></image>
					</view>
					<text class="grid-text">{{items.text}}</text>
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
				pageList: [{
					text: "我的收藏",
					src: "../../static/workorder.png",
					status: false
				},
				{
					text: "我的工单",
					src: "../../static/workorder.png",
					status: false
				},
				{
					text: "我的约伴",
					src: "../../static/friends.png",
					status: false
				}]
			}
		},
		onLoad() {
		
		},
		methods: {
			// 用户松开点击
			gridEndClick(items, index){
				// 按钮变回白色
				var that = this
				var pageList = that.pageList
				pageList[index].status = false
				that.pageList = pageList
				// 页面跳转
				
			},
			// 用户点击态
			gridClick(items, index){
				// 按钮灰变色
				var that = this
				var pageList = that.pageList
				pageList[index].status = true
				that.pageList = pageList
			},
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
	margin-top: 20rpx;
	border-radius: 20.25rpx;
	width: 100%;
	height: 160rpx;
	background-color: #FFFFFF;
}

.co-image{
	/* width: 100rpx; */
	height: 100rpx;
}

.grid{
	width: calc(100% / 3);
	margin: 10rpx auto;
	height: 90%;
	display: inline-block;
	border-right-style: dashed;
	border-right-color: #bfbdb6;
	border-right-width: 1rpx;
}

.grid-click{
	width: calc(100% / 3);
	margin: 10rpx auto;
	height: 90%;
	display: inline-block;
	border-right-style: dashed;
	border-right-color: #bfbdb6;
	border-right-width: 1rpx;
	background-color: #EEEEEE;
}

.grid:nth-child(3n+3){
	border-right-color: #FFFFFF;
}

.grid-text{
	display: block;
	text-align: center;
	/* background-color: #8DC63F; */
	line-height: 10rpx;
	font-size: 28rpx;
	font-weight: 500;
}

.grid-image{
	/* position: absolute; */
	display: block;
	margin: 15rpx auto;
	width: 60rpx;
	height: 60rpx;
}

.blueBackground{
	height: 450rpx;
	width: 100%;
	background-color: #78acff;
}

.avatar{
	background-image: url("https://thirdqq.qlogo.cn/qqapp/1110027966/AB191ACFA7209F10E101AB096C0DEA84/100");
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
