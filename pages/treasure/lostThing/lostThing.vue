<template>
	<view>
		<view class="lost_navigate">
			<text :class="['lost_text',isActive?'active':'']" @click="reportLost">报失</text>
			<text :class="['lost_text',isActive?'':'active']" @click="findLost">招领</text>
			<button size="mini" @click="lostPublish">发布</button>
		</view>
		<swiper :current="current" :interval="2000" :duration="1000">
			<swiper-item>
				<view class="swiper-item">
					<lost-thing v-for="item in [0,1,2,3,4]" :lostName="lostName" :lostOwner="lostOwner" :lostTime="lostTime"></lost-thing>
				</view>
			</swiper-item>
			<swiper-item>
				<view class="swiper-item">
					<lost-thing v-for="item in [0,1,2,3,4,5,6]" :lostName="lostName" :lostOwner="lostOwner" :lostTime="lostTime"></lost-thing>
				</view>
			</swiper-item>
		</swiper>
		<!-- <lost-thing v-for="item in [0,1,2,3,4]" :lostName="lostName" :lostOwner="lostOwner" :lostTime="lostTime"></lost-thing> -->
	</view>
</template>

<script>
	import lostThing from '../../template/lostThingModal.vue'
	export default {
		data() {
			return {
				lostName: 'ipad11 dmlksa',
				lostOwner: '郑浩',
				lostTime: '11月12号',
				current: 0,
				isActive: true
			}
		},
		methods: {
			lostPublish() {
				uni.navigateTo({
					url: 'lostPublish/lostPublish'
				})
			},
			reportLost() {
				this.current = 0;
				this.isActive = true;
				console.log(this.current);
			},
			findLost() {
				this.current = 1;
				this.isActive = false;
				console.log(this.current);
			}
		},
		components: {
			lostThing
		}
	}
</script>

<style>
	.lost_navigate {
		background: #78ACFF;
		color: white;
		font-size: 16px;
		display: flex;
		justify-content: space-around;
	}
	.lost_text{
		padding: 0 8px;
	}
	.active {
		border-bottom: 2px solid white;
	}
	swiper{
		height: 600px;
	}
</style>
