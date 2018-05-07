/**
 * 大联盟相关
 */
(function(){
	//记录cps
	var oldCPS   = getCookie("COOKIE_CPS_ID");
	var newCPSID = Js.Tools.getParameterByName("cps_id");
	var _cookieCpsId = function(newCPSID){
		return "C_"+newCPSID;
	};
	var _serverCpsId = function(newCPSID){
		reg=new RegExp("^C_");  
		if(reg.test(newCPSID)){
			return newCPSID.substring(2);
		}
	};
	if(newCPSID != null){
		newCPSID = _cookieCpsId(newCPSID);
	};
	if(newCPSID){
		if(!oldCPS || oldCPS != newCPSID){// oldCPS存在 或者 oldCPS不等于newCPSID
			
			addCookie("COOKIE_CPS_ID", newCPSID, 60*60*24);//兼容getCpsInfo调用失败先由前端种了一个cookie

			var url = sendLink.auth+"/api/web/update/getCpsInfo.jsonp?cps_id=" + _serverCpsId(newCPSID);
			
			function _updCpsCookieTime(dataObj){
				var data = dataObj.result[0];
				if(data && data.VALID_TIME){
					addCookie("COOKIE_CPS_ID", newCPSID,data.VALID_TIME);
				}
			}
			$.sendData({
				url: url,
				dataType: 'jsonp',
				timeout: 1000, //设置请求超时时间（毫秒）。
				type:'post',//默认值:post
				status_aop:"close",//如果特定指定status_aop为close来跳过"截获异步处理"，否则默认开启aop拦截
				success: _updCpsCookieTime,
				error: function(XMLHttpRequest, msg) { //失败的回调函数
					console.log('服务通信息失败,超时: ' + this.timeout+'(毫秒)');
				}
			});
		}
	};
})()