/*!
 * --------------------------------------------
 * 集团统一统登
 * --------------------------------------------
 * Author: wangchenguo@le.com
 * Date: 2016-10-13
 * vik: http://wiki.letv.cn/pages/viewpage.action?pageId=55648600
 * cookie: 參考PDF本地文檔
 * des: JS-SDK登录
 */
/*$.getScript("http://jstatic.letvcdn.com/sdk/passport.js")
    .done(function() {
    console.log('Load was performed.');
});
document.write("//jstatic.letvcdn.com/sdk/passport.js");*/

/**
 * [集团登录]
 * @param  {[type]} e [description]
 * @return {[type]}   [description]
 */
(function(e) {
    //登录对象
    userLogin = {
        //nextUrl：默认值为当前页面。
        //target : "_blank"或者"_self"，默认是当前页打开   注：使用'_blank'参数时，该api要在用户主动行为回调中调用，如jq click事件回调等，非用户主动行为的调用，会导致api调用失败
        opt: {
            plat: 'shop_ml_pc',
            //登陆注册plat参数对应表 (该参数必传)
            isForce: false,
            //true: (二次登录验证参数必传)切换账号登录（即使当前已经登录了也可以重新登录）  false：正常登录（如果当前已经登录了，会直接跳转回原页面）   默认正常登录
            vertical: true,
            //true: 竖屏不传代表横屏默认横屏 (该参数仅限pc大陆)
            isGlobal: true,
            //true：海外登录页面，false：大陆登录页面（海外必传）
            language: 'zh-CN',
            //香港：‘zh - HK'，美国: 'en-US' (海外必传)
            //leProtocol: '',
            //协议地址（经过encodeURIComponent）（限PC）
            hideThirdLogin: false,
            //ture: 隐藏第三方登陆false：不隐藏第三方登陆默认不隐藏（限PC）
            isSetCookie: 1,
            //设置第三方cookie，0：不设置第三方cookie默认不设置
            region: 'CN'
            //地区
        },
        register: function() {
            LEPass.openRegisterPage(this.opt);
        },
        openLoginPage: function() {
            LEPass.openLoginPage(this.opt);
        },
        openLoginDialog: function(a, b) {
            if (getCookie("LEMALL_LOGIN_FLAG") != null) {
                //二次登录弹窗参数
                userLogin.opt.isForce = true;
            }
            LEPass.openLoginDialog(function(res) {
                //登录成功回调
                console.info("login success");
                var uid = res.userinfo.uid;
                userLogin.isForce(uid);
                Js.login.loginCallback = a;
                $.isFunction(a) && a();
                userLogin.refreshHead();
            }, function() {
                //关闭浮层回调
                console.info("login cancel")
            }, userLogin.opt)
        },
        logOut: function(a) {
            LEPass.logOut(function(res) {
                // 退出成功回调
                console.info("logout success");
                if (res.code == 0) {
                    clearCookie("COOKIE_LOGIN_TIME");
                    clearCookie("LEMALL_LOGIN_FLAG");
                    window.location.href = "/";
                }
                Js.login.logoutCallback = a;
                $.isFunction(a) && a();
            });
        },
        refreshHead: function() {
            LEPass.isHasLogin(function(res) {
                //初始化成功回调,返回用户信息
                if (res.islogin == 1) {
                    var uid = res.userinfo.uid;
                    if (getCookie("LEMALL_LOGIN_FLAG") == null) {
                        userLogin.isForce(uid);
                    }
                    //重置登录时间
                    if (getCookie("COOKIE_LOGIN_TIME") != null) {
                        addCookie("COOKIE_LOGIN_TIME", new Date().getTime(), 0.5);
                    }
                    var a = res.userinfo.nickname;
                    //处理超长度用户名
                    try {
                        a = 10 < a.length ? a.substring(0, 10) + "..." : a;
                    } catch (e) {
                        console.info(e);
                    }
                    $(function() {
						if(typeof(newHeader)!='undefined' ){
                            $("#loginMess").html('<span>Hi,</span><a rel="nofollow" ref="cn:dl_name" href=' + _hrefPath + '"/user/center/myhome.html?alys_id=head" target="_blank" title="' + res.userinfo.nickname + '"><span class="pl5 pr5">' + a + '</span></a>');
        		        	$("#registerMess").html('<a rel="nofollow" ref="cn:dl_exit" id="logout"><span class="pl5 pr15">[退出]</span>');
						}else{
							$("#loginMess").html('<span class="gray">Hi,</span><a rel="nofollow" ref="cn:dl_name" href=' + _hrefPath + '"/user/center/myhome.html?alys_id=head" target="_blank" title="' + res.userinfo.nickname + '"><span class="pl5 pr5">' + a + '</span></a> <a rel="nofollow" ref="cn:dl_exit" id="logout"><div id="autoLogout" class="header_tips dark hidden"></div><span class="pl5 pr15">[退出]</span></a>');
							$("#registerMess").parent('.vline').remove();
						}
                        //处理退出操作
                        $("#logout").click(function() {
                            Js.login.logout();
                        });
                    });
                } else {
                    clearCookie("COOKIE_LOGIN_TIME");
                    clearCookie("LEMALL_LOGIN_FLAG");
                    $(function() {
                        $("#login").click(function() {
                            Js.login.openLoginPage();
                        });
                        $("#register").click(function() {
                            Js.login.register();
                        });
                    });
                }
            }, userLogin.opt);
        },
        isForce: function(uid) {
            //当前客户端时间
            var nowTime = new Date().getTime();
            //记录登录时间作为商城登录校验标识
            if (getCookie("COOKIE_LOGIN_TIME") == null) {
                addCookie("COOKIE_LOGIN_TIME", nowTime, 0.5);
            }
            //记录商城登录标记
            if (getCookie("LEMALL_LOGIN_FLAG") == null) {
                addCookie("LEMALL_LOGIN_FLAG", uid);
            }
        },
        checkLogin: function(callback) {
            if (templateShow.isIosVideoApp()) {
                letvShop.getScript('//js.letvcdn.com/lc03_js/201511/25/15/59/bridge/AppJSBridge.js', function() {
                    var LetvJSBridge = require('main/AppJSBridge');
                    LetvJSBridge.fun.callLogin(function(data) {})
                });
                return
            } else if (templateShow.isShopApp()) {
                window.location = 'letv://tologin';
            } else if (templateShow.isAndroidSDk() && !templateShow.isH5Login()) {
                js2sdk.jsCallAndroidLoginPage()
            } else if (templateShow.isIosSDk() && !templateShow.isH5Login()) {
                jsCallIosLoginPage()
            }
			if(callback)
				callback();
        }
    }
    //登录入口
    e.Js = e.Js || {};
    e.Js.login = {
        loginCallback: null,
        logoutCallback: null,
        hasLogin: function(a, b) {
            b = b || {};
            this.getAuth() ? $.isFunction(a) && a() : this.showDialog(a, b);
        },
        showDialog: function(a, b) {
            userLogin.openLoginDialog(a, b);
        },
        getAuth: function() {
            return window.getCookie("COOKIE_LOGIN_TIME") ? true : false;
        },
        logout: function(a) {
            userLogin.logOut(a);
        },
        openLoginPage: function() {
            userLogin.openLoginPage();
        },
        refreshHead: function() {
            userLogin.refreshHead();
        },
        register: function() {
            userLogin.register();
        },
        checkLogin: function(callback) {
            userLogin.checkLogin(callback);
        },
        getUserId: function() {
            var userId = getCookie('ssouid') ? getCookie('ssouid') : getCookie('COOKIE_USER_ID');
			if(userId == '""' || userId == '')
				userId = null;
			return userId;
        }
    };
    $.extend($.fn, e.Js.login);
    Js.login.refreshHead();
})(window);
/**
 * [游客身份cookie]
 * @return {[type]} [description]
 */
(function() {
    if (getCookie("COOKIE_SESSION_ID") == null) {
        $.sendData({
            url: sendLink.auth_https + 'guest/generateCookie.jsonp',
            data: {},
            dataType: 'jsonp',
            timeout: 1000, //设置请求超时时间（毫秒）。
            type: 'post', //默认值:post
            status_aop: "close", //如果特定指定status_aop为close来跳过"截获异步处理"，否则默认开启aop拦截
            login_type: "", //如果特定指定login_type为"redirect"重定向到登录页面，默认弹出登录弹层，
            success: function(data) { //成功的回调函数
                console.info("成功的回调函数");
            },
            error: function(XMLHttpRequest, msg) { //失败的回调函数
                console.info('服务通信息失败,超时: ' + this.timeout + '(毫秒)');
            }
        });
    }
})();