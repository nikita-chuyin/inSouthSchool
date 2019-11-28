<template>
	<view class="whole_container">
		<view class="school_picture" v-if="isActive">
			<text>选择一张图片开始定制专属南华大头像吧</text>
		</view>
		<view class="school_picture" v-else="isActive">
			<image :src="imageSrc" mode="" style="width:100%;height:100%"></image>
		</view>
		<button type="primary" @click="chooseImage">点我选择一张照片</button>
	</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				isActive: true,
				imageSrc: ''
			}
		},
		methods: {
			chooseImage() {
				let that = this;
				uni.chooseImage({
					success(e) {
						console.log(e);
						that.isActive = false;
						that.imageSrc = e.tempFilePaths[0];
						console.log(that.imageSrc);
					}
				})
			}
		}
	}
</script>

<style>
	.whole_container {
		padding: 24px;
		color: white;
	}

	.school_picture {
		width: 100%;
		height: 250px;
		text-align: center;
		line-height: 250px;
		margin: 0 auto;
		margin-bottom: 20px;
		border-radius: 5px;
		background: #555555;
	}

</style>
