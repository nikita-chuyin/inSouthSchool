<template>
	<view>
		<view class="navigation_grounp">
			<view class="navigation">
				<view class="scanCode" @click="scanCode">
					<text class="iconfont icon-saoyisao"></text>
					<text>扫一扫</text>
				</view>
			</view>
		</view>
		<view class="header">
			<swiper indicator-dots="true" indicator-color="#ccc" indicator-active-color="white" autoplay="true" bindchange="switchChange"
			 class="head_switch">
				<swiper-item>
					<image src="../../static/11.jpg" mode=""></image>
				</swiper-item>
				<swiper-item>
					<image src="../../static/15.jpg" mode=""></image>
				</swiper-item>
				<swiper-item>
					<image src="../../static/16.jpg" mode=""></image>
				</swiper-item>
			</swiper>
		</view>
		<view class="main">
			<view class="main_module">
				<view class="module_img at_left" style="padding-left: 20px;">
					<view class="module_text">
						<view>学</view>
						<text>在武大</text>
					</view>
				</view>
				<view class="module_right at_right">
					<view class="box" v-for="(item,index) in learnPage" @click="learnToPage(index)">
						<view class="icon_box">1</view>
						<text>{{item}}</text>
					</view>
				</view>
			</view>
			<view class="main_module">
				<view class="module_img at_right main_module">
					<view class="box" v-for="(item,index) in livePage" @click="livePageName(index)">
						<view class="icon_box">1</view>
						<text>{{item}}</text>
					</view>
				</view>
				<view class="module_right at_left">
					<view class="module_text">
						<view>住</view>
						<text>在武大</text>
					</view>
				</view>
			</view>
			<view class="treasure_box">
				<view class="box" v-for="(item,i) in pageTypeName" :key="i" @click="ToPageName(i)">
					<view class="icon_box">1</view>
					<text>{{item}}</text>
				</view>
			</view>
			<view class="main_module">
				<view class="module_img at_left">
					<view class="module_text">
						<view>玩</view>
						<text>在武大</text>
					</view>
				</view>
				<view class="module_right at_right">
					<view class="box" v-for="(item,index) in playPage" @click="playPageName(index)">
						<view class="icon_box">1</view>
						<text>{{item}}</text>
					</view>
				</view>
			</view>
		</view>

	</view>
</template>

<script>
	import app from '../../App.vue'
	export default {
		data() {
			return {
				imageSrc: [0, 1, 2, 3],
				learnPage: ["图书馆","成绩管理","自习助手","四六级"],
				livePage: ["校园地图","故障报修","失物招领","通讯录"],
				pageTypeName: ["诚信雨伞", "校园巴士", "校园网"],
				playPage: ["南华头像", "校园直播"]
			}
		},
		methods: {
			scanCode() {
				uni.scanCode({
					onlyFromCamera: true,
					scanType: ['qrCode'],
					success(res) {
						console.log(res)
					},
					fail(res) {
						console.log(res)
						uni.showToast({
							title: '扫码失败，请重试',
							icon: 'none',
							duration: 2000
						})
					}
				})
			},
			learnToPage(index){
				let url = '';
				switch (index) {
					case 0:
						url = 'library/library'
						break;
					case 1:
						url = 'scoreSystem/scoreSystem'
						break;
					case 2:
						url = 'reviewLesson/reviewLesson'
						break;
					case 3:
						url = 'cetQuery/cetQuery'
						break;
				}
				uni.navigateTo({
					url: url
				})
			},
			livePageName(index){
				let url = '';
				switch (index) {
					case 0:
						url = 'schoolMap/schoolMap'
						break;
					case 1:
						url = './repair/repair'
						break;
					case 2:
						url = 'lostThing/lostThing'
						break;
					case 3:
						url = 'phoneList/phoneList'
						break;
				}
				uni.navigateTo({
					url: url
				})
			},
			
			ToPageName(index) {
				let url = '';
				switch (index) {
					case 0:
						url = "honestyUmbrella/honestyUmbrella"
						break;
					case 1:
						url = "honestyUmbrella/honestyUmbrella"
						break;
					case 2:
						url = "schoolWiFi/schoolWiFi"
						break;
				}
				uni.navigateTo({
					url: url
				})
			},
			playPageName(index){
				let url = '';
				switch (index) {
					case 0:
						url = 'schoolPicture/schoolPicture'
						break;
					case 1:
						url = 'schoolProgram/schoolProgram'
						break;
				}
				uni.navigateTo({
					url: url
				})
			}
		},
		onLoad() {
			uni.showModal({
				content:'功能还未完善'
			})
		}
	}
</script>

<style>
	@import '../template/template.css';

	.scanCode {
		/* width: 100px; */
		/* height: 80px; */
		/* background: #777; */
		font-size: 13px;
	}

	.header .head_switch {
		height: 180px;
	}

	.main {
		width: 94%;
		padding: 10px;
		display: flex;
		flex-flow: column;
		align-items: center;
	} 


	.main_module,
	.module_right {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center;
	}

	.at_right {
		flex: 2;
	}

	.at_left {
		flex: 1;
	}

	.main_module .module_text {
		width: 80px;
		height: 85px;
		background-color: #78acff;
		border-radius: 5px;
		color: white;
		padding: 3px 5px;
	}

	.module_text view {
		font-size: 25px;
		font-weight: bold;
	}

	.box {
		width: 87px;
		height: 35px;
		border-radius: 3px;
		box-shadow: 0px 0px 25px 3px #aaa;
		padding: 4px;
		display: flex;
		justify-content: center;
		align-items: center;
		margin: 6px;
	}

	.box .icon_box {
		background-color: #78acff;
		width: 20px;
		height: 20px;
		border-radius: 50%;
		text-align: center;
		color: white;
		line-height: 20px;
		font-size: 12px;
		margin-right: 4px;
	}

	.treasure_box {
		display: flex;
	}
	swiper-item image{
		width: 100%;
		height: 100%;
	}
</style>
