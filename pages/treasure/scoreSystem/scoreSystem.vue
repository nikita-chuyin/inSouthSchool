<template>
	<view class="whole_box">
		<view class="container" @click="seatOrder">
			<text class="bigText">成绩单</text>
			<text>成绩查询、GPA及学分统计</text>
		</view>
		<view class="container" @click="bookSearch">
			<text class="bigText">给分查询</text>
			<text>课程给分情况查询</text>
		</view>
		<view class="container" @click="seatOrder">
			<text class="bigText">排名查询</text>
			<text>课程全校排名查询</text>
		</view>
		<view class="container" @click="seatOrder">
			<text class="bigText">职业测试</text>
			<text>用公选课分析你最适合的职业</text>
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
					url: 'scoreLogin/scoreLogin'
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
