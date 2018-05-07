/**
 * Author: yangyande@letv.com
 * Date: 2016-10-12
 * Desc: 全站pop弹层实现
 * depend on 依赖le.jquery.min.js
 * pop、myAlert、myConfirm 依赖le.vue.js
 */

$(document).ready(function() {
	
var $mask = $('<div style="background:black; width: 100%; height: 100%; opacity:.75; position:fixed; left:0; top:0; z-index:100000; opacity:0.1; display:none"></div>')

$(document.body).append($mask)

var html = '<div class="vlert_box" id="vlert" style="left: 50%; top: 50%" :style="{visibility: visibility}"><div class="box_title clearfix"><div class="text">此网页显示：</div><a class="box_close_btn fonticon fonticon-close-small" @click="close"></a></div><div class="box_content">{{{ queue.length>0?queue[0].message : "" }}}</div><div class="box_btn clearfix" v-if="status === \'confirm\'"><a class="ok_btn" @click="ok"><span>确定</span></a><a class="close_btn" @click="close"><span>取消</span></a></div></div>'

$(document.body).append(html)	

var div_align = {
	methods: {
		'center': function() {
			this.$el.style.marginLeft = -this.$el.offsetWidth / 2 + 'px'
			this.$el.style.marginTop = -this.$el.offsetHeight / 2 + 'px'
		}
	}
}
		
var vlert = new Vue({
	el: '#vlert',
	data: function() {
		return {
			'queue': [],
			'visibility': '',
			'status': ''
		}
	},
	mixins: [div_align],
	methods: {
		'open': function() {
			this.status = this.queue[0].status;
			
			this.center();
			
			this.visibility = 'visible';
			
			$mask.show();
		},
		'close': function() {		
			var not_callback = this.queue[0].not_callback;
			
			if (not_callback) {
				not_callback();
			}
			
			this.visibility = 'hidden';
			
			$mask.hide();
		},
		'ok': function() {
			var ok_callback = this.queue[0].ok_callback;
			
			if (ok_callback) {
				ok_callback();
			}
			
			this.visibility = 'hidden';

			$mask.hide();
		}
	},
	watch: {
		queue: function() {
			if (this.queue.length > 0) {
				this.open()
			}
		},
		visibility: function() {
			if (this.visibility === 'hidden') {
				this.queue.shift()
			}
		}
	}
}) 

function myAlert(message, ok_callback) {	
	vlert.queue.push({
		message: message, 
		ok_callback: null, 
		not_callback: function() {
			//兼容旧代码
			ok_callback && ok_callback(false)
		},
		status: 'alert'
	})
}

function myConfirm(message, ok_callback, not_callback) {	
	vlert.queue.push({
		message: message, 
		ok_callback: function() {
			//兼容旧代码
			ok_callback && ok_callback(true)
		},
		not_callback: function() {
			//兼容旧代码
			not_callback && not_callback(false)
		}, 
		status: 'confirm'
	})
}

window.myAlert = myAlert
window.myConfirm = myConfirm



function pop(str) {	
	$('#new_address_div').hide()
				$('#user_address_list').show()

	$('#editUserAddress').addClass('cur')
	$('#newAddress').removeClass('cur')


	var $wrap = $('<div style="position:fixed; z-index:100001; left: 50%; top: 50%;" :style="{visibility: visibility}"></div>');
	
	if (str.charAt(0) === '#' || str.charAt(0) === '.') {
		$wrap.append($(str).css({'position': 'static', 'display': 'inline-block'}))
	} else {
		$wrap.append(str).children(":first").css({'position': 'static', 'display': 'inline-block'})
	}
	
	$(document.body).append($wrap)
	
	$(document).find('[id="wjPop-close"]').die('click').live('click', function() {
      if($wrap.find('iframe')[0]) {
      	$wrap.remove()
		$mask.hide()
      } else {
      	v_pop.close()
      }
	})
	
	var v_pop = new Vue({
		el: $wrap[0],
		data: function() {
			return {'visibility': ''}
		},
		mixins: [div_align],
		ready: function() {
			this.open()
		},
		methods: {
			'open': function() {		
				this.visibility = 'visible'
		
				this.center()
				
				$mask.show()
			},
			'close': function() {		
				this.visibility = 'hidden'
				
				$mask.hide()
			},
		}
	})
	
	return v_pop
}
	
window.pop = pop

});