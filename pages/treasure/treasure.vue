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
				<swiper-item>1</swiper-item>
				<swiper-item>2</swiper-item>
				<swiper-item>3</swiper-item>
			</swiper>
		</view>
		<view class="main">
			<view class="main_module">
				<view class="module_img at_left">
					<view class="module_text">
						<view>学</view>
						<text>在武大</text>
					</view>
				</view>
				<view class="module_right at_right">
					<view class="box" @click="library">
						<view class="icon_box">1</view>
						<text>图书馆</text>
					</view>
					<view class="box" @click="scoreManger">
						<view class="icon_box">1</view>
						<text>成绩管理</text>
					</view>
					<view class="box" @click="reviewLesson">
						<view class="icon_box">1</view>
						<text>自习助手</text>
					</view>
					<view class="box" @click="cetSystem">
						<view class="icon_box">1</view>
						<text>四六级</text>
					</view>
				</view>
			</view>
			<view class="main_module">
				<view class="module_img at_right main_module">
					<view class="box">
						<view class="icon_box">1</view>
						<text>校园地图</text>
					</view>
					<view class="box" @click="repair">
						<view class="icon_box">1</view>
						<text>故障报修</text>
					</view>
					<view class="box">
						<view class="icon_box">1</view>
						<text>失物招领</text>
					</view>
					<view class="box">
						<view class="icon_box">1</view>
						<text>通讯录</text>
					</view>
				</view>
				<view class="module_right at_left">
					<view class="module_text">
						<view>住</view>
						<text>在武大</text>
					</view>
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
					<view class="box">
						<view class="icon_box">1</view>
						<text>武大头像</text>
					</view>
					<view class="box">
						<view class="icon_box">1</view>
						<text>校园直播</text>
					</view>
				</view>
			</view>
		</view>

	</view>
</template>

<script>
	export default {
		data() {
			return {
				imageSrc: [0, 1, 2, 3]
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
			library() {
				uni.navigateTo({
					url:'library/library'
				})
			},
			scoreManger(){
				uni.navigateTo({
					url: 'scoreSystem/scoreSystem'
				})
			},
			reviewLesson(){
				uni.navigateTo({
					url: 'reviewLesson/reviewLesson'
				})
			},
			repair(){
				uni.navigateTo({
					url: 'repair/repair'
				})
			},
			cetSystem(){
				uni.navigateTo({
					url : 'cetQuery/cetQuery'
				})
			}
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
		background: yellow;
	}

	.main {
		padding: 10px;
	}

	.module_img {
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
		background: green;
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
		background: green;
		width: 20px;
		height: 20px;
		border-radius: 50%;
		text-align: center;
		color: white;
		line-height: 20px;
		font-size: 12px;
		margin-right: 4px;
	}
</style>
