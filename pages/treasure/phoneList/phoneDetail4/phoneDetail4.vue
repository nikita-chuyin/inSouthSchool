<template>
	<view>
		<view class="score_container detail_type" v-for="(item,i) in phoneType" @click="phoneTypeDetail(i)">
			<text>{{item}}</text>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				phoneType:["活动项目部长","专利申请部部长","秘书部部长","宣传部部长","专利转化部","会长"]
				 
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
