<template>
	<view class="sWhole_box">
		<view class="score_container" v-for="(item,index) in repairThing">
			<text class="score_text">{{item}}</text>
			<input type="text" :placeholder="placeholder[index]" :value="stuNum" @input="inputNum" />
		</view>
		<button class="btn_type" @click="login">报修</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				repairThing: ["区域","楼宇","地址","项目","明细","描述","电话","承修人","费用"],
				placeholder: ["","请先选择区域","请输入故障详细地址","请输入区域和楼宇","请先选择项目","请填写故障描述","请输入电话","请先选择明细","请先选择明细"],
				
			}
		},
		methods: {
			
		}
	} 
</script>
  
<style>  
@import url("../../template/template.css");
</style>