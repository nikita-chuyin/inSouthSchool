<template>
	<view class="sWhole_box">
		<view class="score_container" v-for="item in [0,1,2,3,4,5,6,7,8,9]">
			<text>区域</text>
			<input type="text" placeholder="请输入学号" :value="stuNum" @input="inputNum" />
		</view>
		<button class="btn_type" @click="login">报修</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		},
		methods: {
			
		}
	}
</script>

<style>
@import url("../../template/template.css");
</style>