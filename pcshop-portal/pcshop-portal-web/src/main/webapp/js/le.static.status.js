;
(function($) {
	var STATUS = {
		'4': login, //登录
		'51': login, //session过期
		'52': login, //登录
		'53': login, //登录
		'54': login, //登录
		'61': login, //登录
		'62': login, //登录
		'69': login, //登录
		'71': login, //登录
		'72': login, //登录
		'73': login, //登录
		'107': authCodeError,
		'108': needAuthCode,
		'100100107': authCodeError, //验证码错误
		'100100108': needAuthCode, //需求验证码
		'100100109': authCodeError//验证码错误
	}

	var suffix = new Date().getTime();
	var popVerificationCode;
	var popQueue;

	var ToolsUtil = {
		suffix: suffix,
		//生成随机数
		randomSum: function(min, max) {
			return min + Math.round(Math.random() * (max - min));
		},
		/*
			函数说明：根据MAP返回字符串参数
				param
					map: {mid:"1",page:"2"}
				return "mid=1&page"
		*/
		dealParamMapToStr: function(param) {
			var str = "";
			var i = 1;
			for (var key in param) {
				if (i === 1) {
					str += key + "=" + param[key];
				} else {
					str += "&" + key + "=" + param[key];
				}
				i++;
			}
			return str;
		},
		//弹出遮罩功能
		addLoading: function() {
			timerId = window.setTimeout(function() {
				if ($("#sendDataLoad").length == 0) {
					$("body").append(Js.Tools.getShadeLayer("loadingContent") +
						"<div id='wjLoad-body' class='loadingContent'>" +
						"<div id='sendDataLoad'><img src='/htmlResource/images/loading.gif'/></div>" +
						"<div>" +
						"<div class='wjLoad-text'>努力加载中...<span id='dot'>请稍等</span></div>" +
						"</div>" +
						"</div>");
					Js.Tools.setEleToCenter("#wjLoad-body");
				}
			}, 10);
		},
		createPopQueue: function() {
			/**
			 * JS 声名类似 java StringBuffer对象
			 * @param str
			 * @return
			 */

			function StringBuffer() {
				this._things_ = new Array();
			};
			/**
			 * JS 实现 类似 java StringBuffer 的append 方法
			 * @param str
			 * @return
			 */
			StringBuffer.prototype.append = function(str) {
				this._things_.push(str);
				return this;
			};
			/**
			 * JS 实现 类似 java StringBuffer 的toString 方法
			 * @return
			 */
			StringBuffer.prototype.toString = function() {
				return this._things_.join("");
			};

			var sb = new StringBuffer();
			sb.append('<div class="all-dilog">');
			sb.append('<div class="middle-dilog-container">');
			sb.append('<div class="vertical-middle-bomb">');
			sb.append('<div class="vertical-middle-bomb-container wait-container">');
			sb.append('<div class="wait-img">');
			sb.append('<img src="//img3-lemall.letvimg.com/file/20140607/default/38557352382589045">');
			sb.append('</div>');
			sb.append('<div class="wait-text">');
			sb.append('<p>排队中，请稍候...</p>');
			sb.append('</div>');
			sb.append('</div>');
			sb.append('</div>');
			sb.append('</div>');
			sb.append('</div>');

			$(document.body).append(sb.toString());
			return {
				popId: "#queue_" + suffix,
			}
		},
		removeCloseLoading: function() {
			//Js.closeLoadContent();
			window.clearInterval($.data(document.body, "timerId"));
			$(".loadingContent").remove();
		},
		codeError: function() {
			var suffix = this.suffix;
			var closeSubmitLoading = function() {
				$("#verificationCodeSubmit_" + suffix).find("span").html("提交");
			}
			closeSubmitLoading();
			$("#codeError_" + suffix).empty().append("您输入的验证码有误，请重新输入");
			$("#verify_" + suffix).attr("src", sendLink.verify + "validCodeImage?" + (new Date().getTime()));
			$("#verifycode_" + suffix).focus();
		},
		addSubmitLoading: function() {
			$("#verificationCodeSubmit_" + this.suffix).find("span").html("提交中...");
		},
		refreshVerificationCode: function() {
			var suffix = this.suffix;
			$("#verify_" + suffix).attr("src", sendLink.verify + "validCodeImage?" + (new Date().getTime()));
		},
		verificationCode: function() {
			var suffix = this.suffix;
			var verificationCode = $("#verifycode_" + suffix).val();
			if (verificationCode == null || $.trim(verificationCode).length == 0) {
				$("#codeError_" + suffix).empty().append("请填写验证码");
				$("#verifycode_" + suffix).focus();
				return "";
			}
			return verificationCode;
		},
		/*
			函数说明：延迟执行
				param
					fn:需要执行的函数
					millisec:在执行代码前需等待的毫秒数
		*/
		delayExecution: function(fn, millisec) {
			setTimeout(fn, millisec);
		},
		createPopElement: function() {
			/**
			 * JS 声名类似 java StringBuffer对象
			 * @param str
			 * @return
			 */

			function StringBuffer() {
				this._things_ = new Array();
			};
			/**
			 * JS 实现 类似 java StringBuffer 的append 方法
			 * @param str
			 * @return
			 */
			StringBuffer.prototype.append = function(str) {
				this._things_.push(str);
				return this;
			};
			/**
			 * JS 实现 类似 java StringBuffer 的toString 方法
			 * @return
			 */
			StringBuffer.prototype.toString = function() {
				return this._things_.join("");
			};
			var sb = new StringBuffer();

			sb.append('<div id="openVerificationCode_' + suffix + '" class="all-dilog">');
			sb.append('<div class="middle-dilog-container">');
			sb.append('<div class="vertical-middle-bomb">');
			sb.append('<div class="vertical-middle-bomb-container yellow-cattle-container">');
			sb.append('<span id="closeVerificationCode_' + suffix + '" class="yellow-cattle-close">');
			sb.append('</span>');
			sb.append('<h2><span>为保障您的权益，有效抵制黄牛</span><span>请输入验证码</span></h2>');
			sb.append('<div class="yellow-cattle-form">');
			sb.append('<div class="cattle-text-box">');
			sb.append('<input id="verifycode_' + suffix + '" type="text" placeholder="">');
			sb.append('</div>');
			sb.append('<span id="code_' + suffix + '" class="cattle-img"><img id="verify_' + suffix + '" src="' + sendLink.verify + '/validCodeImage?' + (new Date()).getTime() + '" title="点击换一张" /></span>');
            sb.append('<p id="codeError_' + suffix + '" class="yellow-cattle-warning"></p>');
            sb.append('</div>');
            sb.append('<div class="vertical-middle-btn">');
            sb.append('<div class="middle-btn-flex">');
            sb.append('<a id="verificationCodeSubmit_' + suffix + '" href="javascript:;" class="le-m-btn-type1 noBtn">确定</a>');
            sb.append('</div>');
            sb.append('</div>');
            sb.append('</div>');
            sb.append('</div>');
            sb.append('</div>');
            sb.append('</div>');
             
			$(document.body).append(sb.toString());

			return {
				popId: "#openVerificationCode_" + suffix,
			}
		}
	};

	var InitEventBund = {
		suffix: suffix,
		verificationEvent: function(data, param, resend) {
			var suffix = this.suffix
			//按钮点击事件
			$("#verificationCodeSubmit_" + suffix).on('click', function() {
				var code = ToolsUtil.verificationCode();
				if (code != "") {
					if (typeof param != "undefined") {
						if (typeof param.data=="string") {
							param.data += "&RANDOMCODE=" + code;
						}
						else {
							param.data.RANDOMCODE=code;
						}
						ToolsUtil.addSubmitLoading();
						resend(param);
					}
				} else {
					return false;
				}
			});
			$("#code_" + suffix).on('click', function() {
				$("#verify_" + suffix).attr("src", sendLink.verify + "validCodeImage?" + (new Date().getTime()));
			});
			$("#a_verify_" + suffix).on('click', function() {
				$("#verify_" + suffix).attr("src", sendLink.verify + "validCodeImage?" + (new Date().getTime()));
			});
			$("#closeVerificationCode_" + suffix).on('click', function() {
				if (popVerificationCode) {
					ToolsUtil.removeCloseLoading();
					popVerificationCode.close();
				}
			});
			$("#verifycode_" + suffix).on('click', function() {
				$("#codeError_" + suffix).empty();
			});
		}
	};
	
	function authCodeError(data, param, resend) {
		if (typeof param.RANDOMCODE == "undefined") {
			ToolsUtil.addLoading(); //添加loading
		} else {
			ToolsUtil.addSubmitLoading(); //改变提交按钮方字
		}
		ToolsUtil.codeError();
	}

	function needAuthCode(data, param, resend) {
		if (typeof param.RANDOMCODE == "undefined") {
			ToolsUtil.addLoading(); //添加loading
		} else {
			ToolsUtil.addSubmitLoading(); //改变提交按钮方字
		}
		if (typeof popVerificationCode != "undefined") {
			popVerificationCode.open();
			ToolsUtil.refreshVerificationCode();
		} else {
			var obj = ToolsUtil.createPopElement();
			popVerificationCode = pop(obj.popId, {
				removeAfterShow: true
			});
		}
		InitEventBund.verificationEvent(data, param, resend);
	}

	function login(data, param, resend) {
		if (typeof param.login_type != "undefined" && param.login_type == "redirect") {
			Js.login.openLoginPage();
		} else {
			Js.login.showDialog(function() {
				resend(param);
			});
		}
	}

	function preventHN(data, param, resend) {
		if (typeof popQueue != "undefined") {
			popQueue.open();
		} else {
			var obj = ToolsUtil.createPopQueue();
			popQueue = pop(obj.popId, {
				removeAfterShow: true,
				y: (Js.Tools.winHeight() / 2 - $(obj.popId).outerHeight() / 2)
			});
			ToolsUtil.delayExecution(function() {
				resend(param);
			}, ToolsUtil.randomSum(0, 3000));
		}
	}

	//抢购或秒杀，资格验证
	function cartResend(data, param, resend) {
		if (data.reqUrl) {
			param.url = data.reqUrl;
			resend(param);
		} else {
			console.log(data.status + " data.reqUrl is not find", "cartResend error");
		}
	}
	//业务上报
	var report = function(options,responseData){
		var report_business_type = options.report_business_type ? options.report_business_type : "noName";
		var request_url = options.url;
		var request_param = options.data ? options.data : "";
		var response = responseData;
		var verifyType = function(o){//校验数据类型
			var s = Object.prototype.toString.call(o);
			return s.match(/\[object (.*?)\]/)[1].toLowerCase();
		};
		var doIt = function(){
			var url = sendLink.diaryReport + "diaryReport";
			var param = {
				reportBusinessType:report_business_type,
				requestUrl:request_url,
				responseInfo:JSON.stringify(response)
			};
            if('Object'.toLowerCase() === verifyType(request_param)){
				param.requestData = JSON.stringify(request_param); 
            }else if('Array'.toLowerCase() === verifyType(request_param)){
            	param.requestData = "ajax调用不规范";
            }else{
            	param.requestData = request_param;
            }
			$.sendData({
				url: url,
				data: param,
				dataType: 'jsonp',
				success: function() { },
				error: function(XMLHttpRequest, msg) { }
			});
		}
		if(response == "communication error"){
			doIt();
		}else if(options.report_status && options.report_status.length > 0){
            for(var i=0;i< options.report_status.length;i++){
              	if(response.status == options.report_status[i]){
              		doIt();	break;
              	}
            }
		}
	};
	/**
	 * sendData 截获异步处理回调方法描述
	 * 除了与开源jquery ajax 传参一致外，在与url,type,dataType,cache,success,error平级封装了如下两个参数，可扩展
	 * param:
	 * 		status_aop: 则当STATUS存在时,如果options没有特定指定status_aop来跳过"截获异步处理"，否则默认开启aop拦截, 指定放弃aop时传"close"
	 * 		login_type: 则当STATUS存在时,如果options没有特定指定login_type指定登录拦截处理方式时，默认弹出登录弹层， 否则需要设置为"redirect"指明为重定向到登录页面进行登录,
	 * 		do_diary_report:options没有特别指定,默认close不开启业务上报机制，如果传"open"开启业务上报机制
	 * 		report_status:数组类型,配啥do_diary_report使用,如果没有定义默认最外层状态为非1通通上报,如果义入[1004,1005]按给定状态码进行上报
	 *
	 */
	
	base.monitor.on('CAdHookApi', function(data, options, resend, success, error, XMLHttpRequest) {
		
		//判断是否需要上报
		options.do_diary_report === "open" && report(options,data);

		if (data != "communication error") {
			options.status_aop = options.status_aop != "close" ? true : false;
			var statusDisabled = (options.status_aop_close_arr && utils.object.array.calculateArrayIncludeElement(options.status_aop_close_arr, data.status)) || false;
			if (!options.status_aop || !STATUS || !STATUS[data.status] || statusDisabled) {
				options.success(data, options, resend);
				return;
			}

			if (STATUS[data.status]) {
				STATUS[data.status](data, options, resend);
			}

		} else {
			options.error(data, options);
		}
	});
	$.sendData = base.load;
	//老版本zxlib写法兼容		
	if (window.Js) {
		Js.sendData = function(url, param, successCallback, errorCallback) {
			var options = {}
			options.url = url;
			options.success = successCallback;
			options.error = errorCallback || function() {};
			options.dataType = param.dataType || 'jsonp'
			if (typeof param === "object") {
				options.url += (typeof param.param === "string") ? ("?" + param.param) : "";
			} else if (typeof param === "string" && param != "") {
				options.url += "?" + param;
			}
			base.load(options);
		}
	}
}(jQuery));