<template>
	<view>
		<view class="content">
			<view class="verify-img-panel" :style="{width: imgSize.width,height: imgSize.height}">
				<view v-if="!refreshButtonHide" @click="refresh" class="verify-refresh" style="z-index:9999">
					<image style="width:100%;height:100%" src="data:image/png;base64,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"
					 mode=""></image>
				</view>
				<canvas canvas-id="point-code" @touchstart="createPoint($event)" :style="{width:imgSize.width,height:imgSize.height}"></canvas>
				<view v-for="(item,index) in checkPosArr" :key='index' v-if="index < num" class="point-on" :style="{top:item.y + 'px',left:item.x + 'px'}">{{index+1}}</view>
			</view>
			<view class="verify-bar-area" :style="{width: imgSize.width}">
				<text v-show="checkStatus==-1" class="verify-msg">请顺序点击【{{checkCharString}}】</text>
				<text v-show="checkStatus==0" class="verify-msg-fault">验证失败</text>
				<text v-show="checkStatus==1" class="verify-msg-success">验证成功</text>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: 'wyj-text-code',
		props: {
			defaultNum: {
				default: 4, //默认的文字数量 
				type: Number
			},
			checkNum: {
				default: 2,
				type: Number
			},
			backgroundImageArray: {
				default: () => {
					return ['/static/wyj-text-code/2.png']
				},
				type: Array
			},
			imgSize: {
				default: () => {
					return {
						width: '600upx',
						height: '400upx',
					}
				}, //默认的文字数量 
				type: Object
			}
		},
		data() {
			return {
				ctx: {},
				fontPos: [], //选中的坐标信息
				checkStatus: -1,
				checkCharString: '',
				checkPosArr: [], //用户点击的坐标
				num: 0, //点击的记数
				pointShow: false,
				refreshButtonHide: false,
				checkFault: false,
				fontSizeArr: [
					'italic small-caps bold 16px microsoft yahei',
					'small-caps normal 18px arial',
					'16px microsoft yahei'
				],
				fontStr: '年大业不会个出行作生家成到来部对进多全他公开们时理方实学报用于法高长现本定化加关机分力外区能后就下社过前面也得与说之员务电事可三各好第从平代当天水提商管内小所立入量子度北保心科委术明增基名向由记计强表办条最达革收二并如际及导东比决交南安此结义车然放世间因共步物持无城相村取原处信四军队级联少手权江近认果格几没职服台式样只亿志给难观五协变风批支查张林划争构具百或才必李参引思包极知反么采色打它料率列兴马则节拉直光较线克历占功负财类约纪史示客闻央限米失检九防钱断双让切须儿空你注承铁乐边药爱称届继紧字困刘友显且春居红半充陈阳六太七亲审卫良曾站龙罗习普轻扩仍景止离降训菜眼宁早夫换顾介画综阿遇丰害官听另针洋庆久找晚互汉吸录诉秀顺邓订帮角灾妇杨虽煤笔尼左细右烟玉厅旧艰呼吉男绿季杂皮贡罚曲叶累孙邮偿答怀驻胡守朱械纺灵拓衣析骨档秘宾哪归休肥珠叫寻攻秋昌估册宽末轨涨载杰雪戏辽夺凡冰避珍渐折朋敢弱怕伙餐肯阵婚抽胆灯扣牙宫煌呈伯卢粉妻欠迪昆凤胶慢芳妈谊允淡虎迷贩吧炎刀昨', //不重复的汉字
				img_rand: 0 //随机的背景图片

			};
		},
		mounted() {
			this.init()
		},
		methods: {
			init() {
				//加载页面
				this.refresh()
				this.$emit('ready')
			},
			color16() { //十六进制颜色随机
				var r = Math.floor(Math.random() * 256).toString(16);
				var g = Math.floor(Math.random() * 256).toString(16);
				var b = Math.floor(Math.random() * 256).toString(16);
				r = r.length == 2 ? r : '0' + r
				g = g.length == 2 ? g : '0' + g
				b = b.length == 2 ? b : '0' + b
				var color = '#' + r + g + b;
				return color;
			},

			pointInit() {
				for (var i = 0; i < this.checkNum; i++) {
					this.checkPosArr.push({
						x: 0,
						y: 0
					})
				}
			},


			//绘制合成的图片
			drawImg(img) {
				//准备canvas环境 
				this.ctx = uni.createCanvasContext('point-code', this)
				// 绘制图片
				this.ctx.drawImage(img, 0, 0, 300, 200);
				// 绘制水印
				var fontChars = [];
				var tmp_index = '';
				for (var i = 1; i <= this.defaultNum; i++) {
					//取得文字
					fontChars[i - 1] = this.getChars(this.fontStr, fontChars);

					//当前字体样式
					tmp_index = Math.floor(Math.random() * this.fontSizeArr.length);
					this.ctx.font = this.fontSizeArr[tmp_index];
					//当前字体填充色
					this.ctx.fillStyle = this.color16()

					//生成文字坐标
					var avg = parseInt(parseInt(this.imgSize.width) / 2 / (this.defaultNum + 1));
					if (Math.floor(Math.random() * 2) == 1) {
						var tmp_y = Math.floor(parseInt(this.imgSize.height) / 2 / 2) + tmp_index * parseInt(this.imgSize.height) / 2 / 2 /
							this.defaultNum;
					} else {
						var tmp_y = Math.floor(parseInt(this.imgSize.height) / 2 / 2) - tmp_index * parseInt(this.imgSize.height) / 2 / 2 /
							this.defaultNum;
					}

					this.ctx.fillText(fontChars[i - 1], avg * i, tmp_y);
					this.fontPos[i - 1] = {
						'char': fontChars[i - 1],
						'x': avg * i,
						'y': tmp_y
					};
					console.log(this.fontPos[i - 1]);

				}
				this.ctx.draw(true)
				//从生成的文字中取出比对文字
				for (var i = 0; i < (this.defaultNum - this.checkNum); i++) {
					this.shuffle(this.fontPos).pop();
				}
				var msgStr = '';
				for (var i = 0; i < this.fontPos.length; i++) {
					msgStr += this.fontPos[i].char + ',';
				}
				this.checkCharString = msgStr.slice(0, -1);
				return this.fontPos;
			},

			//递归去重
			getChars(fontStr, fontChars) {
				var tmp_rand = parseInt(Math.floor(Math.random() * fontStr.length));
				if (tmp_rand > 0) {
					tmp_rand = tmp_rand - 1;
				}

				let tmp_char = fontStr.charAt(tmp_rand);
				if (fontChars.indexOf(tmp_char) == -1) {
					return tmp_char;
				} else {
					return this.getChars(fontStr, fontChars);
				}
			},

			//洗牌数组
			shuffle(arr) {
				var m = arr.length,
					i;
				while (m) {
					i = (Math.random() * m--) >>> 0;
					[arr[m], arr[i]] = [arr[i], arr[m]]
				}
				return arr;
			},

			//创建坐标点并进行对比
			createPoint(e) {
				if (this.checkStatus == 1) {
					return
				}
				if (this.num >= this.checkNum) {
					return
				}
				this.checkPosArr[this.num] = e.touches[0]
				this.num += 1;
				if (this.num == this.checkNum) {
					setTimeout(() => {
						var flag = this.comparePos(this.fontPos, this.checkPosArr);

						if (flag == false) { //验证失败
							//调用用户定义的失败方法
							this.checkStatus = 0;
							this.$emit('error')
							// this.refresh();
							setTimeout(() => {
								this.checkStatus = -1;
							}, 1000);

						} else { //验证成功
							this.checkStatus = 1
							this.refreshButtonHide = true
							setTimeout(() => this.$emit('success'), 1500);
						}
					}, 400);

				}
			},

			//比对坐标点
			comparePos(fontPos, checkPosArr) {
				var flag = true;
				for (var i = 0; i < fontPos.length; i++) {
					if (!(parseInt(checkPosArr[i].x) + 40 > fontPos[i].x && parseInt(checkPosArr[i].x) - 40 < fontPos[i].x &&
							parseInt(checkPosArr[i].y) + 40 > fontPos[i].y && parseInt(checkPosArr[i].y) - 40 < fontPos[i].y)) {
						flag = false;
						break;
					}
				}
				return flag;
			},

			//刷新
			refresh() {
				this.fontPos = []; //选中的坐标信息
				this.num = 0; //点击的记数
				this.pointInit()
				this.img_rand = Math.floor(Math.random() * this.backgroundImageArray.length); //随机的背景图片
				var img
				img = this.backgroundImageArray[this.img_rand];
				console.log(img)
				this.fontPos = this.drawImg(img);
			},

		}
	}
</script>

<style>
	.content {
		width: 750upx;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
	}

	.verify-bar-area {
		margin: 10upx 0 0 0;
		background: linear-gradient(180deg, #fff 0, #ebedf0 87%);
		border: 1px solid #e4e7eb;
		display: flex;
		justify-content: center;
		height: 60upx;
		line-height: 60upx;
		border-radius: 30upx;
		font-size: 28upx;
	}

	.verify-bar-area .verify-move-block {
		position: absolute;
		top: 0px;
		left: 0;
		background: #fff;
		cursor: pointer;
		-webkit-box-sizing: content-box;
		-moz-box-sizing: content-box;
		box-sizing: content-box;
		box-shadow: 0 0 2px #888888;
		-webkit-border-radius: 1px;
	}

	.verify-bar-area .verify-move-block:hover {
		background-color: #337ab7;
		color: #FFFFFF;
	}

	.verify-bar-area .verify-left-bar {
		position: absolute;
		top: -1px;
		left: -1px;
		background: #f0fff0;
		cursor: pointer;
		-webkit-box-sizing: content-box;
		-moz-box-sizing: content-box;
		box-sizing: content-box;
		border: 1px solid #ddd;
	}

	.verify-img-panel {
		margin: 0;
		marginBottom: 5upx;
		-webkit-box-sizing: content-box;
		-moz-box-sizing: content-box;
		box-sizing: content-box;
		border: 1px solid #ddd;
		border-radius: 3px;
		position: relative;
	}

	.verify-img-panel .verify-refresh {
		width: 40upx;
		height: 40upx;
		text-align: center;
		padding: 5px;
		cursor: pointer;
		position: absolute;
		top: 0;
		right: 0;
		z-index: 2;
	}

	.verify-img-panel .icon-refresh {
		font-size: 20px;
		color: #fff;
	}

	.verify-img-panel .verify-gap {
		background-color: #fff;
		position: relative;
		z-index: 2;
		border: 1px solid #fff;
	}

	.verify-bar-area .verify-move-block .verify-sub-block {
		position: absolute;
		text-align: center;
		z-index: 3;
		border: 1px solid #fff;
	}

	.verify-bar-area .verify-move-block .verify-icon {
		font-size: 18px;
	}

	.verify-bar-area .verify-msg {
		z-index: 3;
	}

	.verify-bar-area .verify-msg-fault {
		z-index: 3;
		color: #f0ad4e;
	}

	.verify-bar-area .verify-msg-success {
		z-index: 3;
		color: #4cd964;
	}

	.point-on {
		background-color: #1abd6c;
		color: #fff;
		z-index: 9999;
		width: 30upx;
		height: 30upx;
		text-align: center;
		line-height: 30upx;
		border-radius: 50%;
		position: absolute;
		display: flex;
		justify-content: center;
	}
</style>
