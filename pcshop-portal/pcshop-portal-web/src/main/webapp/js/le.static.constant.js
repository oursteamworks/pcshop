/**
 * 定义全局服务头地址信息
 * 代替zxlib中的sendLink
 */
(function(e) {
    e.sendLink = e.sendLink || {};
    e.requestHead = "https://";
	//e.sendLink.host = e.sendLink.domain = e.requestHead + window.location.host+"/";
	e.sendLink.host = e.sendLink.domain = "https://" + window.location.host+"/";
    e.sendLink.auth_https = e.requestHead + "authentication-go.lemall.com/";
    e.sendLink.auth = e.requestHead + "authentication-go.lemall.com/";
    e.sendLink.membercenter = e.requestHead + "membercenter-go.lemall.com/";
    e.sendLink.mycenter = e.requestHead + "mycenter-go.lemall.com/";
    e.sendLink.ucen = e.requestHead + "usercenter-go.lemall.com/";
    e.sendLink.mallcommon = e.requestHead + "supmall-go.lemall.com/common/";
    e.sendLink.mallproduct = e.requestHead + "supmall-go.lemall.com/product/";
    e.sendLink.foru = e.requestHead + "forum-go.lemall.com/";
    e.sendLink.info = e.requestHead + "info-go.lemall.com/";
    e.sendLink.addr = e.requestHead + "address-go.lemall.com/";
    e.sendLink.rushactivity = e.requestHead + "rushactivity-go.lemall.com/";
    e.sendLink.lema = e.requestHead + "lema-go.lemall.com/";
    e.sendLink.tradeservice = e.requestHead + "tradeservice.lemall.com/";
    e.sendLink.verify = e.requestHead + "verify-go.lemall.com/";//王成国 验证码服务
    e.sendLink.front = e.requestHead + "front-go.lemall.com/";//前端服务类域名（广告也及图片上传）
    e.sendLink.biyibi = e.requestHead + "biyibi-go.lemall.com/"; //比一比
	e.sendLink.diaryReport = e.requestHead + "report-go.lemall.com/";//统计信息上报
    e.sendLink.cartnew = "cart-go.lemall.com/"; 
    e.sendLink.cartv3 = e.requestHead + "cart-go.lemall.com/v3/";//常规添加购物车
    e.sendLink.cartv4 = e.requestHead + "cart-go.lemall.com/v4/";//活动添加购物车
    e.sendLink.rushCart = e.requestHead + "g-go.lemall.com/v4/";//抢购服务
    //e.sendLink.movie = e.requestHead + "movie.go.lemall.com/"; //暂时不用了——维伟确认
    e.sendLink.mylemall = e.requestHead +  "my.lemall.com/";
    e.sendLink.orderlemall = e.requestHead +  "order.lemall.com/";
    e.sendLink.recharge = e.requestHead +  "recharge-go.lemall.com/";
	e.sendLink.ess= "//ess-go.lemall.com/"; 
    e.sendLink.myservice= e.requestHead +  "myservice-go.lemall.com/";  //阔阔在用
    e.sendLink.logistics = e.requestHead + "logistics-go.lemall.com/";//阔阔在用
    e.sendLink.ocs_api = e.requestHead + "ocsapi-go.lemall.com/"; //阔阔在用
    e.sendLink.refundorder =e.requestHead + "refundorderapi-go.lemall.com/"; //阔阔在用
    e.sendLink.newtrade = e.requestHead + "trade.lemall.com/";//延红在用
    e.sendLink.lottery = e.requestHead + "lottery-go.lemall.com/";//领奖抽奖
    //e.sendLink.point = e.requestHead + "userpoint-front.go.lemall.com/";

})(window);