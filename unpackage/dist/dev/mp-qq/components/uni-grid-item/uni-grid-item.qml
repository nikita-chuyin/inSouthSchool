<block wx:if="{{width}}"><view class="uni-grid-item data-v-52023d2c" style="{{'width:'+(width)+';'}}"><view data-event-opts="{{[['tap',[['_onClick',['$event']]]]]}}" class="{{['uni-grid-item__box data-v-52023d2c',(showBorder)?'uni-grid-item--border':'',(square)?'uni-grid-item__box-square':'',(showBorder&&index<column)?'uni-grid-item--border-top':'',(highlight)?'uni-highlight':'']}}" style="{{'border-right-color:'+(borderColor)+';'+('border-bottom-color:'+(borderColor)+';')+('border-top-color:'+(borderColor)+';')}}" bindtap="__e"><view class="{{['uni-grid-item__box-item data-v-52023d2c',(square)?'uni-grid-item__box-item-square':'']}}"><slot></slot></view></view></view></block>