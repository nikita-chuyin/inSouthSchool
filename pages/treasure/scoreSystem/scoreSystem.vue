<template>
	<view class="whole_box">
		<view class="container" @click="reportCard">
			<text class="bigText">成绩单</text>
			<text>成绩查询、GPA及学分统计</text>
		</view>
		<view class="container" @click="queryByscore">
			<text class="bigText">给分查询</text>
			<text>课程给分情况查询</text>
		</view>
		<view class="container" @click="seatOrder">
			<text class="bigText">排名查询</text>
			<text>课程全校排名查询</text>
		</view>
		<view class="container" @click="carrerTest">
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
			reportCard(){
				uni.navigateTo({
					url: 'scoreLogin/scoreLogin'
				})
			},
			queryByscore(){
				uni.navigateTo({
					url: 'queryByscore/queryByscore'
				});
			},
			seatOrder(){
				uni.navigateTo({
					url: 'seatOrder/seatOrder'
				});
			},
			carrerTest(){
				uni.navigateTo({
					url: 'carrerTest/carrerTest'
				})
			}
		}
	}
</script>

<style>
	@import url("../../template/template.css");
</style>
