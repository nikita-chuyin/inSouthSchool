<script>
	export default {
		onLaunch: function() {
			console.log('App Launch')
			uni.getSetting({
			   success(res) {
			      console.log(res.authSetting["scope.userInfo"])
				  if(!res.authSetting["scope.userInfo"]){
					  uni.authorize({
					  	scope: "scope.userInfo",
						success() {
							uni.getUserInfo({
								success(e) {
									console.log(e)
									this.globalData.userInfo = e.userInfo
									uni.login({
										success(result) {
											uni.request({
												url: this.globalData.host + this.globalData.apiVersion + "auth/qq_login",
												method: "POST",
												data: {
													code: result.code,
													userInfo: this.globalData.userInfo
												},
												success(r){
													console.log(r)
												}
											})
										}
									})
								}
							})
						}
					  })
				  }
			   }
			})
		},
		onShow: function() {
			console.log('App Show')
		},
		onHide: function() {
			console.log('App Hide')
		},
		globalData: {  
			userInfo: null,
			host: "http://127.0.0.1:8000/",
			apiVersion: "v1.0/"
		}
	}
</script>

<style>
	/*每个页面公共css */
	@import "colorui/main.css";
	@import "colorui/icon.css";
</style>
