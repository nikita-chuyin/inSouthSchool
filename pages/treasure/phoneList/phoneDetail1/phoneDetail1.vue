<template>
	<view class="sWhole_box">
		<view class="score_container detail_type" v-for="(item,i) in phoneType" @click="phoneTypeDetail(i)">
			<text>{{item}}</text>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				phoneType:["修缮服务电话","车队服务电话","常用电话","医院急诊","热水公司","学生网管","食堂经理"],
				
			}
		},
		methods: {
			phoneTypeDetail(index){
				console.log(index);
			}
		}
	}
</script>

<style>
@import url("../../../template/template.css");
.detail_type{
	margin-top: 10px;
}
</style>
