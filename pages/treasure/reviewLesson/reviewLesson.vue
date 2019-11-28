<template>
	<view>
		<view class="lesson_container">
			<text>本周已达成自习</text>
			<view class="lesson_time">
				<text style="font-size: 20px;">{{lessonTime}}</text>
				<text>分钟</text>
			</view>
			<text>超过全校{{lessonPercent}}%的同学</text>
			<text>最近一次自习分钟</text>
			<button size="mini" type="default" @click="sharePost">生成分享</button>
		</view>
		<view class="lesson_btn_group">
			<button size="mini" type="default" @click="startLesson">开始自习</button>
			<button size="mini" type="default" @click="lessonHistory">自习历史</button>
		</view>
	</view>
</template>

<script>
	import app from '../../../App.vue';
	export default {
		data() {
			return {
				lessonTime: '****',
				lessonPercent: '**'
			}
		},
		methods: {
			sharePost(){
				uni.share({
				    provider: "weixin",
				    scene: "WXSenceTimeline",
				    type: 0,
				    href: "http://uniapp.dcloud.io/",
				    title: "uni-app分享",
				    summary: "我正在使用HBuilderX开发uni-app，赶紧跟我一起来体验！",
				    imageUrl: "https://img-cdn-qiniu.dcloud.net.cn/uniapp/images/uni@2x.png",
				    success: function (res) {
				        console.log("success:" + JSON.stringify(res));
				    },
				    fail: function (err) {
				        console.log("fail:" + JSON.stringify(err));
				    }
				});
			},
			startLesson(){
				uni.showModal({
					title: '自习打卡说明',
					content: '自习过程中请保持本页面打开，系统将持续计时，手机息屏或闪退都会停止自习哦！',
					cancelText:'取消自习',
					confirmText: '开始自习'
				})
			},
			lessonHistory(){
				let userInfo = app.globalData.userInfo;
				if(userInfo == null){
					uni.showToast({
						title:'非法用户',
						icon: 'none'
					})
				}
			}
		},
		onLoad() {
			uni.showLoading({
			    title: '加载中'
			});
			setTimeout(function(){
				uni.hideLoading()
			},2000);
		}
	}
</script>

<style>
	.lesson_btn_group,.lesson_time,.lesson_container{
		flex-flow: column;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.lesson_container{
		background-color: #78acff;
		width: 100%;
		height: 280px;
		border-radius: 0 0 120px 120px;
		justify-content: space-around;
		color: white;
	}
	.lesson_container .lesson_time{
		width: 100px;
		height: 100px;
		border-radius: 50%;
		background: white;
		color: black;
	}
	.lesson_btn_group button{
		margin-top: 25px;
	}
</style>
