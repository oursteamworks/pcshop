Function.prototype.method = function(name, func) {
	this.prototype[name] = func;
	return this;
};

String.method('trim', function() {
	return this.replace(/^\s+|\s+$/g, '');
});

(function($) {
	var timeid;
	var lastValue;
	var options;
	var c;
	var d;
	var t;
  	var suggestId; //大搜索上报使用
    var experiment_id; //大搜索上报使用
  	var trigger; //大搜索上报使用
	$.fn.extend({
		autoComplete: function(config) {
			c = $(this);
			var defaults = {
				width: c.width(), //提示框的宽度 默认跟文本框一样 
				maxheight: 200, //提示框的最大高度 
				top: 0, //与文本框的上下距离 
				url: "", //ajax 请求地址 
				defaultData: [], //默认联系词
				jumpurl: "/product/search.html?level=1&keyword=", //跳转url
				defaultKey: "", //搜索框中默认显示的
				defaultUrl: "",
				type: "post", //ajax 请求类型 
				async: false, //是否异步请求 
				autoLength: 0, //文本长度大于0 就请求服务器 
				getValue: function(value) {}, //当回车 或 鼠标点击选中值的时候执行 
				clearValue: function() {}, //当重新请求时清空Value值 
				getText: function(text) {}, //当回车 或 鼠标点击选中值的时候执行 
                popupmenu: $(".L_popupmenu")
			};
			options = $.extend(defaults, config);
			var p = c.position();
			d = options.popupmenu;
			t = $('.L_popupmenu .box');
			c.bind("keydown", keydown_process);
			c.bind("keyup", keyup_process);
			c.bind("blur", blur_process);
			c.bind("focus", keyup_process);
		}
		});
		function blur_process() {
			timeid = setTimeout(function() {
				d.hide();
			}, 200);
			if (c.val() == "") {
				c.val(options.defaultKey);
				c.css("color", "#ccc");
			}
		}

		function keydown_process(e) {
			if (d.is(":hidden")) {
				return;
			}
			switch (e.keyCode) {
				case 38:
					e.preventDefault();
					var p = t.find(".active").prev();
					if (p.length > 0) {
						d.setScroll(options.maxheight, p);
						p.mouseover();
					} else {
						p = t.find("a:last");
						if (p.length > 0) {
							d.setScroll(options.maxheight, p);
							p.mouseover();
						}
					}
					break;
				case 40:
					e.preventDefault();
					var n = t.find(".active").next();
					if (n.length > 0) {
						d.setScroll(options.maxheight, n);
						n.mouseover();
					} else {
						n = t.find("a:first");
						if (n.length > 0) {
							d.setScroll(options.maxheight, n);
							n.mouseover();
						}
					}
					break;
				case 13:
					e.preventDefault();
					var n = t.find(".active");
					if (n.length > 0) {
						//options.getValue(n.find("input:hidden").val());
						c.val(n.html());
						options.getText(c.val());
						lastValue = "";
						d.hide();
						window.location.href = options.jumpurl + n.html();
					} else if (c.val().trim().length == 0) {
						window.location.href = options.defaultUrl;
					} else {
						letvAlysSendAction(32,82,"serverId="+suggestId+"&experiment_id="+experiment_id+"&trigger="+trigger+"&searchTerm="+c.val()+"&moduleName=suggest_list&clickArea=search_button"); //大数据上报
						window.location.href = options.jumpurl + encodeURIComponent(c.val()) + "&event_action=32&event_category=83&suggestId="+suggestId+"&moduleName=suggest_list&clickArea=search_button&action_code=0";
					}          
					break;
			}
		}

		function keyup_process(e) {
          if (e.keyCode == 13) {
          	if (c.val() == options.defaultKey || c.val().trim().length == 0) {
					window.location.href = options.defaultUrl;
				} else {
                  	letvAlysSendAction(32,82,"serverId="+suggestId+"&experiment_id="+experiment_id+"&trigger="+trigger+"&searchTerm="+c.val()+"&moduleName=suggest_list&clickArea=search_button"); //大数据上报
					window.location.href = options.jumpurl + encodeURIComponent(c.val()) + "&event_action=32&event_category=83&suggestId="+suggestId+"&moduleName=suggest_list&clickArea=search_button&action_code=0";
				}
          }
          
			if (e.keyCode == 38 || e.keyCode == 40 || e.keyCode == 13 || e.keyCode == 37 || e.keyCode == 39) {
				return;
			}
			if (c.val() == options.defaultKey && e.type == "focus") {
				c.val("");
			}
			c.css("color", "#333");
			if (c.val().length > options.autoLength) {
				if (c.val() == lastValue) {
					return; //判断是否跟上一次的值相等, 考虑到用户正在打字 避免相同的值多次请求 
				}
				lastValue = c.val(); //记录请求值 
				options.clearValue(); //清空值 
				getData(c, function(data) {
                  	suggestId = data.result.eid; 
                  	experiment_id = data.result.experimentBucket;
                  	trigger = data.result.trigger;
					if (data.result.suggests.length == 0) {
						d.hide();
						return;
					}
					t.empty();
					$.each(data.result.suggests, function() {
						t.append('<a>' + this.text + '</a>');
					});
					var rows = t.find("a");
					rows.mouseover(function() {
                      t.find(".active").removeClass("active");
                      $(this).addClass("active");
                    });
					rows.click(function() {
						c.val($(this).text());
                      	letvAlysSendAction(31,82,"serverId="+suggestId+"&experiment_id="+experiment_id+"&trigger="+trigger+"&moduleName=suggest_list&clickArea=text&suggestWord="+c.val()+"&searchTerm="+lastValue+"&position="+(this.rowIndex+1)); //大数据上报
						window.location.href = options.jumpurl + c.val() + "&suggestId="+suggestId+"&event_action=31&event_category=83&suggestWord="+lastValue+"&moduleName=suggest_list&clickArea=text&action_code=0";
					});

					d.show();
				});
			} else {
				lastValue = "";
				if (options.defaultData == null || options.defaultData.length == 0) {
					d.hide();
					return;
				}
				t.empty();
				$.each(options.defaultData, function(index) {
					t.append('<a>' + this + '</a>');
				});
				var rows = t.find("a");
				rows.mouseover(function() {
                  t.find(".active").removeClass("active");
                  $(this).addClass("active");
                });
				rows.click(function() {
					//options.getValue($(this).find("input:hidden").val());
					c.val($(this).text());
					options.getText(c.val());
					lastValue = "";
					d.hide();
                  	window.location.href = options.jumpurl + c.val() + "&event_action=31&event_category=83&suggestWord="+lastValue+"&moduleName=suggest_list&clickArea=text&action_code=0";
				});
				d.show();

			}
		}

		function getData(o, process) {
			/*$.ajax({
				type: options.type,
				async: options.async, //控制同步 r
				url: options.url,
				data: {
					text: o.val(),
					size: 10
				},
				dataType: "jsonp",
				success: process,
				Error: function(err) {
					alert(err);
				}
			});*/
          var params = 'text='+ o.val()+'&size='+ 10;
          	Js.sendData(options.url, params, process)
		}


		$.fn.resetEvent = function() {
			c.bind("keyup", keyup_process);
			c.bind("blur", blur_process);
		}
		$.fn.setScroll = function(h, o) {
			var offset = o.offset();
			if (offset.top > h) {
				$(this).scrollTop(offset.top - h);
			} else {
				if (offset.top < 25) { //项的高度 对应样式表 td height:25px 
					$(this).scrollTop(0);
				}
			}
		}
		$(document).ready(function() {
			$("#search_submit").bind("click", function() {
				if (c.val() == options.defaultKey || c.val().trim().length == 0) {
					window.location.href = options.defaultUrl;
				} else {
                  	letvAlysSendAction(32,82,"serverId="+suggestId+"&experiment_id="+experiment_id+"&trigger="+trigger+"&searchTerm="+c.val()+"&moduleName=suggest_list&clickArea=search_button"); //大数据上报
					window.location.href = options.jumpurl + encodeURIComponent(c.val()) + "&event_action=32&event_category=83&suggestId="+suggestId+"&moduleName=suggest_list&clickArea=search_button&action_code=0";
				}
              	
			});

		});
	
})(jQuery);