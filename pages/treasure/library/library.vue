<template>
	<view class="whole_box">
		<view class="container" @click="seatOrder">
			<text class="bigText">座位预约</text>
			<text>图书馆座位预约</text>
		</view>
		<view class="container" @click="bookSearch">
			<text class="bigText">馆藏搜索</text>
			<text>图书馆藏书搜索</text>
		</view>
		<view class="container" @click="seatOrder">
			<text class="bigText">研修室预约</text>
			<text>图书馆研修室预约</text>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return { 
				
			}
		},
		methods: {
			seatOrder(){
				uni.navigateTo({
					url: '../loginLibrary/loginLibrary'
				})
			},
			bookSearch(){
				uni.navigateTo({
					url:'../bookSearch/bookSearch'
				})
			}
		}
	}
</script>

<style>
	@import url("../../template/template.css");
</style>
