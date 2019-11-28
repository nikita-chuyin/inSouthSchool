<template>
	<view :class="showModal || testModal?'cover':''">
		<view :class="[showModal || testModal?'hidden':'active']">
			<view class="cet_container">
				<text  class="score_text">姓名</text>
				<text>{{studentName}}</text>
			</view>
			<view class="cet_container">
				<text class="score_text">学校</text>
				<text>{{schoolName}}</text>
			</view>
			<view class="cet_container">
				<text class="score_text">考试级别</text>
				<text>{{testLevel}}</text>
			</view>
			<view class="cet_container">
				<text class="score_text">笔试成绩</text>
				<view @click="scoreMsg">
					<text>{{writtenRecord}}分</text>
					<text class="iconfont icon-icon-test7"></text>
				</view>
			</view>
			<view class="cet_container">
				<text class="score_text">口试成绩</text>
				<view @click="testMsg">
					<text>{{testScores}}</text>
					<text class="iconfont icon-icon-test7"></text>
				</view>
			</view>
			<button class="btn_type" @click="queryAgain">重新查询</button>
		</view>
		<view :class="showModal?'active':'hidden'">
			<view class="custom_modal">
				<text class="highText">笔试成绩</text>
				<text>准考证号： {{studentName}}</text>
				<text>总分： {{studentName}}分</text>
				<text>听力： {{studentName}}分</text>
				<text>阅读： {{studentName}}分</text>
				<text>写作和翻译： {{studentName}}分</text>
				<button type="primary" @click="hideModal">确定</button>
			</view>
		</view>
		<view :class="testModal?'active':'hidden'">
			<view class="custom_modal">
				<text class="highText">笔试成绩</text>
				<text>准考证号： {{studentName}}</text>
				<text>等级： {{testLevel}}分</text>
				<button type="primary" @click="hideModal">确定</button>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				studentName:null,
				schoolName:null,
				testLevel:null,
				writtenRecord:null,
				testScores:null,
				showModal: false,
				testModal: false
			}
		},
		methods: {
			scoreMsg(){
				this.showModal = true;
			},
			hideModal(){
				this.showModal = false;
				this.testModal = false;
			},
			testMsg(){
				this.testModal = true;
			},
			queryAgain(){
				
			}
		}
	}
</script>

<style>
@import url("../../template/icon.css");
.cover{
	width:100%;
	height: 510px;
	background: #C8C7CC;
	z-index: 0;
}
.cet_container{
	background: white;
	padding: 13px;
	display: flex;
	justify-content: space-between;
	margin-top: 3px;
}
.btn_type{
	margin-top: 23px;
	width: 120px;
	background: #0081FF;
	color: white;
	border-radius: 5px;
}
.custom_modal{
	display: flex;
	position: fixed;
	left: 10%;
	top: 100px;
	width: 80%;
	height: 200px;
	background: white;
	flex-flow: column;
	align-items: center;
	justify-content: center;
	border-radius: 8px;
	line-height: 21px;
	z-index: 99;
}
.highText{
	display: block;
	margin-bottom: 5px;
	font-size: 18px;
	font-weight: 500;
}
.hidden{
	display: none;
}
.active{
	display: block;
}
</style>
