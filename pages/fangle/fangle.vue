<template>
	<view>
		<!-- 自定义导航栏 -->
		<view class="navigation_grounp"> 
			<view class="navigation">
				<input type="text" placeholder="请输入关键字..." focus :class="showOrnot?'input_hidden':''"  :value="searchWord" />
				<view class="nav_search">
					<text class="iconfont icon-icon-test4" @click="searchMain"></text>
				</view>
				<text :class="['nav_title',showOrnot?'':'hidden']">{{title}}</text>
			</view> 
		</view>
		<!-- 头部导航栏部分 --> 
			<view class="header">

			<scroll-view scroll-x class="uni-slidingMenu">
				<view :class="['slidingMenuList',activeIndex==index?'active':'']" v-for="(item, index) in list" :key="index" @click="getActive(index)"
				 v-cloak>
					{{item}}
				</view>
			</scroll-view>
			<view class="header_block">
				<picker :value="pubIndex" :range="pubValue" @change="hidePicker">
					<view class="picker">
						{{publish}}
						<text class="iconfont icon-icon-test1"></text>
					</view>
				</picker>
			</view>
		</view>
		<!-- 发布评论部分 -->
		<view class="body">
			<view class="main" v-for="item in [0,1,2]">
				<view class="main_title">
					<image src="../../static/user.png" style="width:45px;height:45px;border-radius:5px;" />
					<view class="title_name">
						<text style="font-weight:bold;">柚子茶</text>
						<text class="iconfont icon-icon-test3"></text>
						<view>13小时前</view>
					</view>
				</view>
				<view class="main_content">
					想想看的路上看到了
				</view>
				<view class="main_comment">
					<view>
						<text class="iconfont icon-icon-test2"></text>
						<text>188</text>
					</view>
					<view>
						<text class="iconfont icon-icon-test"></text>
						<text>1</text>
					</view>
					<view>
						<text class="iconfont icon-icon-test3"></text>
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
				showOrnot: true,
				title: '在南华',
				list: ['全部', '通知公告', '个人发布'],
				activeIndex: 0,
				pubIndex: [0, 1, 2, 3],
				pubValue: ['发布时间', '评论时间', '喜欢热度', '评论热度'],
				publish: '发布时间',
				searchWord: ''
			}
		},
		methods: {
			searchMain() {
				this.showOrnot = !this.showOrnot;
			},
			hidePicker(res) {
				console.log(this.pubValue[res.detail.value]);
				this.publish = this.pubValue[res.detail.value];
			},
			getActive(index) {
				this.activeIndex = index;
				uni.showToast({
					title: '动态加载中',
					icon: 'loading',
					duration: 1000
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
	@import '../template/icon.css';
	 .navigation_grounp{
	     position: flexed;
	     top: 0;
	     width: 100%;
	 }
	 .navigation_grounp > .navigation{
	     display: flex;
	     align-items: flex-end;
	     box-sizing: border-box;
	     padding-bottom: 13px;
	     padding-left: 15px;
	     background-color: #0081FF; 
	     height: 62px;
	     color:white;
		 	 font-size: 16px;
			 opacity: 0.5;
	 }
	 .navigation .nav_search{
	     overflow: hidden;
	 }
	  .navigation .nav_title{
	      padding-left: 33%;;
	        text-align: center;
	        overflow: hidden;
	        white-space: nowrap;
		
	 }
	 .hidden{
		 display: none;
	 }
	.input_hidden{
	    border-bottom: 1px solid white;
	    display: none;
	    color: white;
	    font-size: 16px;
	}
	
	.body {
		background: #eee;
	}

	.header {
		display: flex;
		padding: 5px 2px;
	}

	.header .header_block {
		display: flex;
		padding-top: 3px;
		font-size: 12px;
		margin-left: 3px;
	}

	.header .uni-slidingMenu {
		width: 70%;
		white-space: nowrap;
		height: 80rpx;
	}

	.header .slidingMenuList {
		padding: 5px;
		color: black;
		border-radius: 20px;
		border: 1px solid #000000;
		display: inline-block;
		font-size: 12px;
		margin-left: 14px;
	}

	.header .active {
		background: #007AFF;
		color: white;
	}

	.main {
		border-bottom: 8px solid white;
	}

	.main_content {
		padding: 8px;
		font-size: 14px;
	}

	.main_title {
		display: flex;
		padding: 8px;
	}

	.main_title .title_name {
		margin-left: 6px;
	}

	.title_name view {
		font-size: 12px;
		color: gray;
	}

	.main_comment {
		display: flex;
		align-item: center;
		justify-content: center;
		padding: 3px;
	}

	.main_comment view {
		width: 30%;
		height: 40px;
		line-height: 40px;
		text-align: center;
	}
</style>
