<template>
	<view>
		<view class="book_shell">
			<image src="../../../static/book.png"></image>
			<text>图书馆馆藏书籍搜索</text>
		</view>
		<view class="book_search">
			<input type="text" placeholder="请输入图书信息..." />
			<button class="btn_type" @click="bookSearch">
				<text class="iconfont icon-icon-test4"></text>
			</button>
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
			bookSearch(){}
		}
	}
</script>

<style>
	@import url("../../template/icon.css");
	.book_shell{
		display: flex;
		flex-flow: column;
		text-align: center;
		align-items: center;
		font-size: 18px;
		font-weight: 500;
		margin-top: 30px;
	}
	.book_shell image{
		width: 100px;
		height: 100px;
	}
	.book_search{
		border: 1.5px solid #4CD964;
		width: 90%;
		margin: 15px auto;
		border-radius: 8px;
		display: flex;
	}
	.book_search input{
		padding: 8px;
		flex: 6;
		font-size: 14px;
		height: 40px;
		line-height: 50px;
	}
	.book_search .btn_type{
		flex: 1;
		background: #4CD964;
		color: white;
		font-weight: 500;
	}
</style>
