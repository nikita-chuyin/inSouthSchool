<template>
	<view class="sWhole_box">
		<view style="margin-top: 12px;" class="login_box">
			<image src="../../../static/phonelist.png" style="height:80px;" mode=""></image>
			<text>{{loginTitle}}</text>
		</view>
		<view class="score_container phone_container" v-for="(item,i) in phoneList" @click="phoneDetail(i)">
			<view>
				<text class="iconfont icon-icon-test6"></text>
				<text>{{phoneList[i]}}</text>
			</view>
			<text class="iconfont icon-icon-test7"></text>
		</view>
		<button class="phone_btn" size="mini" type="primary">团队入驻</button>
	</view>
</template>

<script>
	import loginModule from '../../template/loginModule.vue';
	export default {
		data() {
			return {
				loginTitle:"校园通讯录",
				phoneList:["校园常用电话","第16届大学生创业实践中心","文化调研协会","南华大学创新发明协会","自行车协会","救护之翼"],
				
				
			}
		},
		components:{
			loginModule
		},
		methods: {
			phoneDetail(index){
				let page = 'phoneDetail'+(index + 1);
				uni.navigateTo({
					url: page + "/" + page
				})
			}
		}
	}
</script>

<style>
@import url("../../template/template.css");
.phone_container{
	display: flex;
	flex-wrap: nowrap;
	justify-content: space-between;
}
.phone_btn{
	margin-left: 34%;
	margin-top: 8px;
}
</style>
