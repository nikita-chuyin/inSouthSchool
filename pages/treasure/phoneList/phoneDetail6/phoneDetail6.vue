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
				phoneType:["理事会","管理部","秘书处","宣传部","对外交流部"],
				
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
