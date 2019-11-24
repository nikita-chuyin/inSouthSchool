<template>
	<view>
		<view class="lost_thing_box">
			<view class="lost_above">{{lostName}}</view>
			<view class="lost_below">
				<text class="iconfont icon-nickname"></text>
				{{lostOwner}}
				<text class="iconfont icon-icon-test5"></text>
				{{lostTime}}
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: 'lostThing',
		props:['lostName','lostOwner','lostTime'],
		data() {
			return {
				
			}
		},
		methods: {
			
		}
	}
</script>

<style>
	@import url("icon.css");
.lost_thing_box{
		width: 90%;
		margin:0 auto;
		border-radius: 3px;
		box-shadow: 0 0 20px 3px #C8C7CC;
		margin-top: 20px;
	}
	.lost_thing_box .lost_above{
		font-size: 16px;
		font-weight: 500;
		line-height: 45px;
		color: #39B54A;
		padding-left: 8px;
		padding-right: 8px;
		height: 45px;
		background: #CCCCCC;
	}
	.lost_thing_box .lost_below{
		height: 24px;
		padding-left: 8px;
		padding-bottom: 10px;
		padding-top: 4px;
	}
</style>
