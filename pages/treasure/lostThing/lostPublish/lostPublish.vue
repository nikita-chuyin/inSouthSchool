<template>
	<view>
		<view class="score_container">
			<text>类型</text>
			<input type="text" placeholder="招领或报失" :value="losType" />
		</view>
		<view class="score_container">
			<text>物品</text>
			<input type="text" placeholder="请填写物品名..." :value="lostName" />
		</view>
		<view class="score_container">
			<text>种类</text>
			<picker mode="selector" :value="typeRangeNum" :range="typeRange" @change="typeSelect">
				<view>{{typeRange[typeRangeNum]}}</view>
			</picker>
		</view>
		<view class="lost_guide">联系人</view>
		<view class="score_container">
			<text>姓名</text>
			<input type="text" placeholder="请填写联系人姓名" :value="owerName" @input="inputNum" />
		</view>
		<view class="score_container">
			<text>电话</text>
			<input type="text" placeholder="请填写手机号" :value="owerTel" @input="inputNum" />
		</view>
		<view class="score_container">
			<text>地址</text>
			<input type="text" placeholder="请填写联系地址" :value="owerAddress" @input="inputNum" />
		</view>
		<view class="lost_guide">物品描述</view>
		<view class="score_container">
			<input type="text" placeholder="请填写物品描述" :value="owerAddress" @input="inputNum" />
		</view>
		<view class="lost_guide">物品图片</view>
		<view class="take_photo">
			<text style="font-size: 80px;" class="iconfont icon-tubiaozhizuomoban"  @click="takePhoto"></text>
			<view :class="isActive?'active':''">
				<camera device-position="back" flash="off" @error="error" style="width: 100%; height: 300px;"></camera>
			</view>
		</view>
		<button type="primary">发布</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				losType: '',
				lostName: '',
				typeRange: ['全部','考研教材','电子产品','校园卡','其他'],
				typeRangeNum: 0,
				owerName: '',
				owerTel: '',
				owenAddress: '',
				imageSrc:'',
				isActive: true
				
			}
		},
		methods: {
			typeSelect(e){
				this.typeRangeNum = e.detail.value;
			},
			takePhoto(){
				let that = this;
				uni.showModal({
					title:'图片选择',
					content:'请选择获取图片的方式',
					cancelText:'拍照',
					confirmText:'相册',
					success(e) {
						console.log(e)
						if(e.cancel){
							let ctx = uni.createCameraContext();
							that.isActive = false;
							ctx.takePhoto({
								quality:'high',
								success:function(e){
									console.log(e);
									this.imageSrc = e.tempImagePath;
								},
								fail(err) {
									console.log(err);
								}
							})
						}else{
							uni.chooseImage({
								success(e) {
									this.imageSrc = e.tempFiles[0];
								},
								fail(err){
									console.log(err);
								}
							})
						}
					}
				})
			},
			
		
		}
	}
</script>

<style>
@import url("../../../template/template.css");
@import url("../../../template/icon.css");
.lost_guide{
	font-size: 16px;
	padding: 8px;
}
.take_photo{
	padding: 10px;
	color: #008000;
}
.active{
	display: none;
}
</style>
