<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <!--↑↑模板中请务必使用HTML5的标准DOCTYPE↑↑-->
  <meta name="generator" content="ecstore.b2c" />
  <title>ASUS华硕电脑官方商城-笔记本、手机、一体机、台式机官方直营</title>
  <meta name="keywords" content="华硕,asus,华硕商城,rog,灵耀,飞行堡垒" />
  <meta name="description" content="ASUS华硕电脑官方商城，销售华硕全产品，玩家国度ROG系列、 灵耀笔记本、飞行堡垒系列、灵智手机、飞马手机、台式机、 AIO 一体机、主板、显卡、声卡、DIY外设、路由器等商品。" />
  <link rel='icon' href='http://store.asus.com.cn/public/app/site/statics/favicon.ico' type='image/x-icon' />
  <link rel='shortcut icon' href='http://store.asus.com.cn/public/app/site/statics/favicon.ico' type='image/x-icon' />
  <script src="${pageContext.request.contextPath}/js/lang.js"></script><link href="${pageContext.request.contextPath}/css/typical.css" rel="stylesheet" media="screen, projection" /><script src="${pageContext.request.contextPath}/js/moo.min.js"></script><script src="${pageContext.request.contextPath}/js/ui.min.js"></script>


  <link href="${pageContext.request.contextPath}/css/basic.min.css" rel="stylesheet" media="screen, projection" /><script src="${pageContext.request.contextPath}/js/lang.js"></script><script>
  var Shop = {"url":{"shipping":"\/cart-shipping.html","total":"\/cart-total.html","region":"\/tools-selRegion.html","payment":"\/cart-payment.html","purchase_shipping":"\/cart-purchase_shipping.html","purchase_def_addr":"\/cart-purchase_def_addr.html","purchase_payment":"\/cart-purchase_payment.html","get_default_info":"\/cart-get_default_info.html","diff":"\/product-diff.html","fav_url":"\/member-ajax_fav.html","datepicker":"http:\/\/store.asus.com.cn\/public\/app\/site\/statics\/js_mini","placeholder":"http:\/\/store.asus.com.cn\/public\/app\/b2c\/statics\/images\/imglazyload.gif"},"base_url":"\/","current_server_time":1525750448};
</script>

  <script src="${pageContext.request.contextPath}/js/shop.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widgetsproinstance-get_css-huashuo-aw5kzxgtkdeplmh0bww=.css" />        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/popup.js"></script>
  <script type="text/javascript">
    //2016-8-10 by jiang 添加ga埋入
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-71815005-1', 'auto');
    ga('send', 'pageview');
    ga('require', 'ecommerce');
  </script>

  <script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-W7BL577');
  </script>

</head>
<body style="background:#fff;" data-lazyload-config="{
        onAfter:function(img){
        try{if(img.get('data-img-zoom') == 'true') fixImageSize(img);}catch(e){}
        }}">
<div class="header">
  <div class="top-notice">

  </div>
  <div class="topbar clearfix">
    <div class="page ">
      <div class="fast-bar fl">
        <a href="http://www.asus.com.cn/support/Service-Center/China" class="link">服务网点查询</a>
        <a href="http://www.asus.com.cn/support/" class="link">驱动下载</a>
        <a href="http://zn.xigoubao.com" class="link">华硕智汇家</a>
        <a href="http://www.asus.com.cn/support/zencare/" class="link">ZenCare</a>
      </div>
      <div class="login-bar">
        <ul class="clearfix">
          <li id="login_195" class="small-signin">

            <a href="/passport-login.html">登录</a> |
            <a href="/passport-signup.html">注册</a>
          </li>
          <li id="member_195" class="small-member" style="display:none;">
            <a href="/member.html" class="small-member-name">
              <span id="uname_195"></span>
              <i class="iconfont icon-down"></i>
            </a>
            <div class="member-fast-link">
              <div class="fast-link-item">
                <a href="/member.html">个人中心</a>
              </div>
              <div class="fast-link-item">
                <a href="/member-comment.html">评价晒单</a>
              </div>
              <div class="fast-link-item">
                <a href="/member-favorite.html">我的收藏</a>
              </div>
              <div class="fast-link-item">
                <a href="/passport-logout.html">退出登录</a>
              </div>
            </div>
          </li>
          <li>
            <div id="msgBar_195" class="my-msg">
              <a href="/member-inbox.html" class="fl">
                <span class="mti">消息</span>
              </a>
            </div>
          </li>
          <li>
            <div class="my-order">
              <a href="/member-orders.html">我的订单</a>
            </div>
          </li>
          <li style="padding-right:0;">
            <div class="minicart" id="minicart_195">
              <a href="/cart.html" class="minicart-text">
                <i class="cart_icon"></i> 购物车                <span>( </span><b class="op-cart-number">0</b><span> )</span>
              </a>
              <div class="minicart-cont"></div>
            </div>
            <!-- <a href="/cart.html" class="minicart-text">购物车（<b class="op-cart-number">0</b>） 
        </a>-->
          </li>
        </ul>
        <script>
          var name = Cookie.read('UNAME') || '';
          // if(name){
          //     $("uname_195").innerHTML = name;
          //     $("member_195").setStyle('display','');
          //     $("login_195").setStyle('display','none');
          // }
          // else{
          //     $("login_195").setStyle('display','');
          //     $("member_195").setStyle('display','none');
          // }

          // 判断是否有消息
          /*if(name){
           new Request({
           url:'/member-get_unreadmsg_num.html',
           method:'post',
           onComplete:function(e){
           rs = parseInt(JSON.decode(e).inbox_num);

           if(rs > 0){
           $("msg_num").setStyle('display','block')
           }else{
           $("msg_num").setStyle('display','none')
           }
           }
           }).send();
           }
           else{
           $("msg_num").setStyle('display','none');
           }*/
          // 购物车
          window.addEvent('domready',function(){
            updateCartInfo();
            var cartViewUrl='/cart-view.html';
            var MiniCarWidgets={
              init:function(){
                var minicart=this.cart= $('minicart_195');
                this.detailbox=minicart.getElement('.minicart-cont');
                this.handle=minicart.getElement('.minicart-text');
                this.attach();
                if ($$('.op-cart-number').get('html')>0) {
                  $$('.minicart-text').addClass('active')
                  return false;
                }else if($$('.op-cart-number').get('html')<0 && $$('.minicart-text').hasClass('active')){
                  $$('.minicart-text').removeClass('active')
                }
              },
              attach:function(){
                // 鼠标离开的时候隐藏购物车
                var _this=this;
                this.cart.addEvents({
                  'mouseleave':function(e){
                    _this.cart.removeClass('minicart-active');
                    _this.state=false;
                  }
                })
                this.handle.addEvents({
                  'mouseenter':function(e){
                    if(e&&this.state) return;
                    this.show();
                    this.request({
                      url:cartViewUrl,
                      method:'post',
                      onRequest:function(){
                        this.detailbox.innerHTML='<div class="loading">加载中...</div>';
                      }.bind(this)
                    });
                  }.bind(this)
                });
                this.cart.addEvent('_show',function(e){
                  this.handle.fireEvent('mouseenter');
                }.bind(this));
              },
              show:function(e){
                this.cart.addClass('minicart-active');
                this.state=true;
                var self = this;
                $(document.body).addEvent('click',function(){
                  self.hide();
                  this.removeEvent('click',arguments.callee);
                });
                return this;
              },
              hide:function(){
                this.cart.removeClass('minicart-active');
                this.state=false;
              },
              setHeight: function(el) {
                var h = window.getSize().y - this.detailbox.getPosition(document.body).y + window.getScroll().y - this.detailbox.getPatch().y;
                var dh = this.detailbox.getSize().y - this.detailbox.getPatch('padding', 'border').y;
                if(dh >= h){
                  this.detailbox.setStyle('height',h);
                }
                else this.detailbox.setStyle('height', 'auto');
                return this;
              },
              removeCart:function(el){
                this.request({
                  url:el.href,
                  data:el.getParent('.goods-item')
                });
              },
              addEvent:function(){
                var _this=this;
                this.detailbox.getElements('.action-delete').addEvent('click',function(e){
                  e.stop();
                  _this.removeCart(this);
                });
              },
              request:function(options){
                options = options || {};
                options.data = (options.data?options.data.toQueryString():'')+'&mini_cart_list=true';
                options = Object.merge({
                  method:'post',
                  update: this.detailbox,
                  onSuccess:function(re){
                    if (re && re[0].hasClass('no-information')) {
                      $$('.op-cart-number').set('html',0)
                    };
                    try{
                      updateCartInfo();
                      // 去除最后一个的border
                      var minicartlist=this.cart.getElements('.goods-item')
                      minicartlist[minicartlist.length-1].setStyle('border','none')
                      fixImageSize($$('img[data-img-zoom]'));
                    }catch(e){}
                    this.setHeight().addEvent();
                  }.bind(this)
                },options);
                return new Request.HTML(options).send();
              }
            };
            MiniCarWidgets.init();
            if(name){
              $("uname_195").innerHTML = name;
              $("member_195").setStyle('display','');
              $("login_195").setStyle('display','none');
            }else{
              new Request({
                url:'/passport-getSessionValue.html',
                method:'post',
                onSuccess:function(data){
                  console.log(data)
                  if(data){
                    $("uname_195").innerHTML = data;
                    $("member_195").setStyle('display','');
                    $("login_195").setStyle('display','none');
                  }
                  else{
                    $("login_195").setStyle('display','');
                    $("member_195").setStyle('display','none');
                  }
                }
              }).send();
            }

          });
        </script>
      </div>
    </div>
  </div>
  <div class="header-main">
    <div class="page clearfix">
      <div class="header-left clearfix">
        <div class="logo">
          <a href="${pageContext.request.contextPath}/">
            <img src="${pageContext.request.contextPath}/picture/951f7374d181bd07ba3f510e358c778e7ba04fab.png" alt="华硕商城">
          </a>
        </div>
        <div class="header-ad">

        </div>
      </div>
      <div class="nav">
        <div class="menu" id="main_nav">
          <ul class="clearfix">
            <li class="nav-item">
              <a class="nav-item-link" href="http://store.asus.com.cn/article-huodongyeedm-495.html" >新飞行堡垒5代首发</a>
            </li>
            <li class="nav-item">
              <a class="nav-item-link" href="https://content.asus.com.cn/?utm_source=asusstore&utm_medium=referral&utm_campaign=top001&utm_content=top001" >好货推荐清单</a>
            </li>
            <li class="nav-item">
              <a class="nav-item-link" href="http://asus.youdemai.com/product/product/index?uid=asusUser" >以旧换新送立体声头戴式耳机</a>
            </li>
          </ul>
          <div class="nav-two-bg"></div>
        </div>
        <script>
          (function(){
            var twoNav=$('main_nav');
            var showTimer=null;
            var hideTimer=null;
            twoNav.getElements('.nav-item').addEvents({
              'mouseenter':function(e){
                var self = this;
                clearTimeout(showTimer);
                var active = function(){
                  if(self.getElement('.nav-two')){
                    self.addClass('active');
                    $$('.nav-two-bg').addClass('active')
                  }
                }
                showTimer = active.delay(100);
              },
              'mouseleave':function(e){
                var self = this;
                clearTimeout(showTimer);
                var active = function(){
                  if(self.getElement('.nav-two')){
                    self.removeClass('active');
                    $$('.nav-two-bg').removeClass('active')
                  }
                  clearTimeout(hideTimer);
                }
                hideTimer = active.delay(100);
              }
            });
          })()
        </script>            </div>
      <div class="search clearfix">
        <div class="searchbar">
          <form action="${pageContext.request.contextPath}/searchIndex" method="post" id="searchbar_198" async="false">
            <input class="x-input" type="text" name="keyword" placeholder="ASUS华硕商城" id="dom_el_fbbfae0" />    <button type="submit" class="btn btn-search"><span><span class="iconfont icon-sousuo"></span></span></button>
          </form>
          <div class="innerKeywords">
            <a href="http://store.asus.com.cn/article-huodongyeedm-495.html">新飞行堡垒5代上市</a>
            <a href="http://store.asus.com.cn/gallery-67.html">顽石5代</a>
          </div>
          <div class="hots">
            <a href="http://store.asus.com.cn/gallery-6.html">游戏本</a>
            <a href="http://store.asus.com.cn/gallery-4.html">轻薄本</a>
            <a href="http://store.asus.com.cn/promotions.html">限时特惠</a>
          </div>
        </div>
        <script>
          (function(scope){
            scope.getElement('button[type=submit]').addEvent('click', function(e){
              if(scope.getElement('input').value.trim() === '') {
                e.stop();
              }else{
                // debugger
                //2016.8.25 by yangjie 添加ga站内搜索跟踪
                var keyword = scope.getElement('input').value.trim();
                ga('send', 'pageview', '/search_results.php?q='+keyword);
              }
            });

            var search_keywords = decodeURIComponent(Memory.get('search_key'));
            if(search_keywords == 'null'){
              search_keywords = '';
            }
//scope.getElement('input[name=search_keywords]').value = search_keywords;

          })($('searchbar_198'));
        </script>
      </div>
    </div>
  </div>

  <div class="page">
    <div class="category-box">






      <!-- <div class="category-handle" id="category_handle">
  <a href="javascript:void(0);">所有商品分类</a>
</div> -->
      <div class="category-content" id="category_box">
        <ul class="category-list">
          <li class="category-item">
            <a href="/channel-1.html" target="_blank" class="category-link"><span class="text">笔记本电脑 </span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-4.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/445429d94f50305c752fe7fa2d35fe3df0241bd8.jpg" alt="">
                                            </span>
                        <span class="cata-name">灵耀轻薄本</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-128.html" target="_blank" class="level3">灵耀3系列</a>
                      <a href="/gallery-81.html" target="_blank" class="level3">灵耀U系列</a>
                      <a href="/gallery-82.html" target="_blank" class="level3">灵耀S系列</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-2.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/6dab4c03d1213feeff60fd72b562c5246510beb1.jpg" alt="">
                                            </span>
                        <span class="cata-name">玩家国度</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-77.html" target="_blank" class="level3">ROG系列</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-6.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/337720971d5a703395d9ffd1d3033a66582ced7a.jpg" alt="">
                                            </span>
                        <span class="cata-name">游戏笔记本</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-67.html" target="_blank" class="level3">顽石-FL系列</a>
                      <a href="/gallery-68.html" target="_blank" class="level3">飞行堡垒-FX/ZX系列</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-7.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/e03a5c51554b009034ac805e02c0aae0ff7f86d8.jpg" alt="">
                                            </span>
                        <span class="cata-name">办公娱乐本</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-8.html" target="_blank" class="level3">效能先锋-A/K/X系列 </a>
                      <a href="/gallery-9.html" target="_blank" class="level3">学生助手-E系列 </a>
                      <a href="/gallery-10.html" target="_blank" class="level3">大屏影音-N/V系列 </a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-3.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/c7e187dafaccf82b80f4d7c37c4d3175333e1fb0.jpg" alt="">
                                            </span>
                        <span class="cata-name">翻转变形本</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-78.html" target="_blank" class="level3">T/TP系列</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-5.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/8af70b75e24fc01a1f69a545a653f58ee76cc490.jpg" alt="">
                                            </span>
                        <span class="cata-name">商用笔记本</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-83.html" target="_blank" class="level3">稳定便携P系列</a>
                      <a href="/gallery-84.html" target="_blank" class="level3">高端商务B系列</a>
                      <a href="/gallery-85.html" target="_blank" class="level3">主流办公Pro系列</a>
                    </dd>
                  </dl>
                </div>
              </div>
              <div class="sub-category-ad" style="width:345px;padding-left:3px;height:500px;">
                <a href="http://store.asus.com.cn/gallery.html?scontent=n,FX80" class="item" target="_blank">
                  <img src="${pageContext.request.contextPath}/picture/d0c91d097d81967ab8ab57cc03b8464f166182b1.jpg" alt="fx80" width="345" height="500"/>
                </a>
              </div>
            </div>
          </li>
          <li class="category-item">
            <a href="/channel-11.html" target="_blank" class="category-link"><span class="text">整机产品 </span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-16.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/e1b2b812969eec2321f0430367dc84ab0824abad.jpg" alt="">
                                            </span>
                        <span class="cata-name">台式机 </span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-17.html" target="_blank" class="level3">游戏主机-G系列 </a>
                      <a href="/gallery-18.html" target="_blank" class="level3">家用-M/K系列 </a>
                      <a href="/gallery-19.html" target="_blank" class="level3">玩家国度-ROG系列 </a>
                      <a href="/gallery-75.html" target="_blank" class="level3">商用-B/P系列</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-12.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/569301df9bc6f7ba2a90efcb57206f8763982d57.jpg" alt="">
                                            </span>
                        <span class="cata-name">一体机 </span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-13.html" target="_blank" class="level3">傲世旗舰Z系列 </a>
                      <a href="/gallery-14.html" target="_blank" class="level3">办公家用V系列 </a>
                      <a href="/gallery-127.html" target="_blank" class="level3">高效商用-A系列</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-136.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/70597dc743b7f1ec9ac02dcb9c562cc828e72f54.png" alt="">
                                            </span>
                        <span class="cata-name">Mini PC</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-137.html" target="_blank" class="level3">高效商用-UN系列</a>
                      <a href="/gallery-138.html" target="_blank" class="level3">玩家国度-GR系列</a>
                      <a href="/gallery-139.html" target="_blank" class="level3">口袋电脑-VIVO STICK系列</a>
                    </dd>
                  </dl>
                </div>
              </div>
              <div class="sub-category-ad" style="width:345px;padding-left:3px;height:500px;">
                <a href="http://store.asus.com.cn/gallery.html?scontent=n,V241" class="item" target="_blank">
                  <img src="${pageContext.request.contextPath}/picture/2e58ca8b81b68bfb5ac634ebaa4636b284c4bb6f.jpg" alt="V241" width="345" height="500"/>
                </a>
              </div>
            </div>
          </li>
          <li class="category-item">
            <a href="/channel-20.html" target="_blank" class="category-link"><span class="text">手机/平板/数码 </span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-24.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/175078ddd53952ce9cd5ab628ca5c88df3bf0373.jpg" alt="">
                                            </span>
                        <span class="cata-name">智能手机 </span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-25.html" target="_blank" class="level3">ZenFone系列 </a>
                      <a href="/gallery-26.html" target="_blank" class="level3">ZenFone飞马系列</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-27.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/6c3b725b09bfedebdcc3f5ca4b1fd2cb5f44ec9b.jpg" alt="">
                                            </span>
                        <span class="cata-name">平板电脑 </span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                </div>
              </div>
              <div class="sub-category-ad" style="width:345px;padding-left:3px;height:500px;">
                <a href="http://store.asus.com.cn/product-2409.html" class="item" target="_blank">
                  <img src="${pageContext.request.contextPath}/picture/0040d939842285e9ff0a9475ee267d2a15c697ce.jpg" alt="飞马4s" width="345" height="500"/>
                </a>
              </div>
            </div>
          </li>
          <li class="category-item">
            <a href="/channel-91.html" target="_blank" class="category-link"><span class="text">主板/显卡/显示器</span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-92.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/fe8c53043651f3c1fb2319c7596705ce1abbd0f3.jpg" alt="">
                                            </span>
                        <span class="cata-name">主板</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-95.html" target="_blank" class="level3">ROG玩家国度</a>
                      <a href="/gallery-98.html" target="_blank" class="level3">特种部队TUF</a>
                      <a href="/gallery-99.html" target="_blank" class="level3">大师PRIME</a>
                      <a href="/gallery-100.html" target="_blank" class="level3">玩家系列</a>
                      <a href="/gallery-101.html" target="_blank" class="level3">主流家用</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-93.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/65b77e723b6a7df7523880baab0a1805d934c81a.jpg" alt="">
                                            </span>
                        <span class="cata-name">显卡</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-96.html" target="_blank" class="level3">ROG玩家国度</a>
                      <a href="/gallery-102.html" target="_blank" class="level3">猛禽系列</a>
                      <a href="/gallery-104.html" target="_blank" class="level3">电竞游戏</a>
                      <a href="/gallery-105.html" target="_blank" class="level3">主流家用</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-94.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/af76b7752ea81bc19f6289eb4a97f032048dea81.jpg" alt="">
                                            </span>
                        <span class="cata-name">显示器</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-97.html" target="_blank" class="level3">ROG玩家国度</a>
                      <a href="/gallery-106.html" target="_blank" class="level3">游戏影音</a>
                      <a href="/gallery-107.html" target="_blank" class="level3">专业影像</a>
                      <a href="/gallery-108.html" target="_blank" class="level3">主流家用</a>
                    </dd>
                  </dl>
                </div>
              </div>
              <div class="sub-category-ad" style="width:345px;padding-left:3px;height:500px;">
                <a href="http://store.asus.com.cn/product-2446.html" class="item" target="_blank">
                  <img src="${pageContext.request.contextPath}/picture/1ba888b43ed2e96e0ff0007e5f938b1c677772c6.jpg" alt="新品显卡" width="345" height="500"/>
                </a>
              </div>
            </div>
          </li>
          <li class="category-item">
            <a href="/channel-109.html" target="_blank" class="category-link"><span class="text">键鼠外设</span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-110.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/8a1ef809f2c5dfd0946be4358709ee2153cfeed4.jpg" alt="">
                                            </span>
                        <span class="cata-name">键盘</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-115.html" target="_blank" class="level3">ROG玩家国度</a>
                      <a href="/gallery-116.html" target="_blank" class="level3">键鼠套装</a>
                      <a href="/gallery-117.html" target="_blank" class="level3">主流家用</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-111.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/b6a29d5740770d5def89ea7f75320529c35e6051.jpg" alt="">
                                            </span>
                        <span class="cata-name">鼠标</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-118.html" target="_blank" class="level3">ROG玩家国度</a>
                      <a href="/gallery-119.html" target="_blank" class="level3">主流家用</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-112.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/57e09fac626a4b5a49b3f6b8a041bb0ee4dd5aad.jpg" alt="">
                                            </span>
                        <span class="cata-name">耳麦</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-113.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/e9de368d60983780e53ac4c78007ce2dc09ad359.jpg" alt="">
                                            </span>
                        <span class="cata-name">鼠标垫</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-114.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/0e117ddf3944471d877aef95659bb9e626c64b56.jpg" alt="">
                                            </span>
                        <span class="cata-name">光驱/刻录机</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                </div>
              </div>
            </div>
          </li>
          <li class="category-item">
            <a href="/gallery-120.html" target="_blank" class="category-link"><span class="text">Zenbo/多媒体产品</span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-131.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/9eca594fdf3da5702dd94fba76f0296c9318df7f.jpg" alt="">
                                            </span>
                        <span class="cata-name">Zenbo</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-123.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/26cbd6842b0cdb266bfd128bbd69aa020c282210.jpg" alt="">
                                            </span>
                        <span class="cata-name">投影仪</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-121.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/0c64c1b1dc9efa2b4637070236b6dd15000714f8.jpg" alt="">
                                            </span>
                        <span class="cata-name">声卡</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                </div>
              </div>
              <div class="sub-category-ad" style="width:345px;padding-left:3px;height:500px;">
                <a href="https://content.asus.com.cn/?p=3860" class="item" target="_blank">
                  <img src="${pageContext.request.contextPath}/picture/848a7a5510a12b6417b142b398c25283dd336a19.jpg" alt="zenbo" width="345" height="500"/>
                </a>
              </div>
            </div>
          </li>
          <li class="category-item">
            <a href="/channel-56.html" target="_blank" class="category-link"><span class="text">周边配件/增值服务</span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-58.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/752311f78a612db8d41bc08d35d86cd97cefc2a0.jpg" alt="">
                                            </span>
                        <span class="cata-name">键盘/鼠标 </span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-61.html" target="_blank" class="level3">键盘 </a>
                      <a href="/gallery-62.html" target="_blank" class="level3">鼠标 </a>
                      <a href="/gallery-63.html" target="_blank" class="level3">键鼠套装</a>
                      <a href="/gallery-64.html" target="_blank" class="level3">鼠标垫 </a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-59.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/42760653184f66f3667aeceda1c6e80a439b278f.jpg" alt="">
                                            </span>
                        <span class="cata-name">笔记本配件 </span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                      <a href="/gallery-66.html" target="_blank" class="level3">ROG玩家国度</a>
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-70.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/16e8c9e484cd3b9744ec4ada8a9526b4c40964ac.jpg" alt="">
                                            </span>
                        <span class="cata-name">手机配件</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-71.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/c4245b8432575492957c2b6a266304df7213b785.jpg" alt="">
                                            </span>
                        <span class="cata-name">平板配件</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-134.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/1f50e989f6efae491514c9c59d203d5efb81ce17.jpg" alt="">
                                            </span>
                        <span class="cata-name">增值服务</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                </div>
              </div>
              <div class="sub-category-ad" style="width:345px;padding-left:3px;height:500px;">
                <a href="http://store.asus.com.cn/product-2536.html" class="item" target="_blank">
                  <img src="${pageContext.request.contextPath}/picture/c98403c09237c928f455ace5c2f07e8765d3ac42.jpg" alt="游骑兵双肩包" width="345" height="500"/>
                </a>
              </div>
            </div>
          </li>
          <li class="category-item">
            <a href="/channel-124.html" target="_blank" class="category-link"><span class="text">网络产品</span><i class="icon-right iconfont"></i></a>
            <div class="sub-box clearfix" style="width:808px;">
              <div class="sub-category-box" style="width:460px">
                <div class="padding">
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-125.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/deb7caf1b1a6b03ae388ea6900c5a0bbc42c9249.jpg" alt="">
                                            </span>
                        <span class="cata-name">家用路由器</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                  <dl class="sub-category clearfix">
                    <dt>
                      <a href="/gallery-126.html" target="_blank" class="level2">
                      <span class="cata-img">
                                            <img src="${pageContext.request.contextPath}/picture/c0bc45060480f920027e3ef1740dc1e279be87fc.jpg" alt="">
                                            </span>
                        <span class="cata-name">性能路由器</span>
                      </a>
                    </dt>
                    <dd class="clearfix">
                    </dd>
                  </dl>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
      <script>
        (function(){
          var category = $('category_box');
          var cata_item=category.getElements('.category-item');
          var cata_len=cata_item.length>8?8:cata_item.length;
          var cata_h=(500-cata_len*40)/cata_len;
          cata_item.setStyles({'margin-bottom':cata_h/2+'px','padding-top':cata_h/2+'px'})
          if (cata_item.length>7) {
            category.getElements('.category-item').each(function(e,i) {
              if (i>7) {
                e.setStyle('display','none')
              };
            });
          };
          cata_item.addEvents({
            'mouseover':function(e){
              var self = this;
              clearTimeout(this.showTimer);
              clearTimeout(this.hideTimer);
              var active = function(){
                if(self.getElement('.sub-box')){
                  self.addClass('active');
                }
              }
              this.showTimer = active.delay(100);
            },
            'mouseout':function(e){
              var self = this;
              clearTimeout(this.showTimer);
              clearTimeout(this.hideTimer);
              var active = function(){
                if(self.getElement('.sub-box')){
                  self.removeClass('active');
                }
              }
              this.hideTimer = active.delay(100);
            }
          });
        })()
      </script>        </div>
  </div>
</div>

<div class="banner">
  <div class="main-slide" id="main_slide_265">
    <!--  data-widget-type="Switchable" data-widget-config="{
 haslrbtn:false,
 effect:'scrollx',
 autoplay:true
}" id="main_slide_265" -->
    <ul class="slide-list switchable-content switchable-content-time-1525661583617" style="z-index:2;">
      <script type="text/javascript">
        (function(){
          var start_time= '1525622400';
          var endtime = '1527696000';
          var str = '<li class="slide-item" data-starttime="1525622400" data-endtime="1527696000">'+
                  '<a href="http://store.asus.com.cn/gallery.html?scontent=n,fx80" target="_blank">'+
                  '<img src="http://store.asus.com.cn/public/images/5f/47/78/1d6f8e3aedec1b53a2a0ca09bd888e3fa6436a99.jpg?1525661564#w" title=""/>'+
                  '</a></li>';
          var str2 = '<li class="trigger-item"></li>'
          if (Shop.current_server_time && (Shop.current_server_time>start_time && Shop.current_server_time<endtime)) {
            document.write(str)
          };
        })();
      </script>
      <script type="text/javascript">
        (function(){
          var start_time= '1522598400';
          var endtime = '1526313600';
          var str = '<li class="slide-item" data-starttime="1522598400" data-endtime="1526313600">'+
                  '<a href="http://store.asus.com.cn/gallery.html?scontent=n,U4100" target="_blank">'+
                  '<img src="http://store.asus.com.cn/public/images/13/6c/7c/5750bc80f8b3ce8377c8ba3e917a955a1f1d2292.jpg?1525398417#w" title=""/>'+
                  '</a></li>';
          var str2 = '<li class="trigger-item"></li>'
          if (Shop.current_server_time && (Shop.current_server_time>start_time && Shop.current_server_time<endtime)) {
            document.write(str)
          };
        })();
      </script>
      <script type="text/javascript">
        (function(){
          var start_time= '1525622400';
          var endtime = '1527696000';
          var str = '<li class="slide-item" data-starttime="1525622400" data-endtime="1527696000">'+
                  '<a href="http://store.asus.com.cn/gallery.html?scontent=n,FX63VD" target="_blank">'+
                  '<img src="http://store.asus.com.cn/public/images/4c/01/00/5e7507dee95ec2a8b33d1e83db7772b814297667.jpg?1516693846#w" title=""/>'+
                  '</a></li>';
          var str2 = '<li class="trigger-item"></li>'
          if (Shop.current_server_time && (Shop.current_server_time>start_time && Shop.current_server_time<endtime)) {
            document.write(str)
          };
        })();
      </script>
      <script type="text/javascript">
        (function(){
          var start_time= '1523462400';
          var endtime = '1526227200';
          var str = '<li class="slide-item" data-starttime="1523462400" data-endtime="1526227200">'+
                  '<a href="http://asus.youdemai.com/product/product/index?uid=asusUser" target="_blank">'+
                  '<img src="http://store.asus.com.cn/public/images/38/63/44/f259e91778eca90c5ab80211198dde6c96638fa0.jpg?1520904598#w" title=""/>'+
                  '</a></li>';
          var str2 = '<li class="trigger-item"></li>'
          if (Shop.current_server_time && (Shop.current_server_time>start_time && Shop.current_server_time<endtime)) {
            document.write(str)
          };
        })();
      </script>
      <script type="text/javascript">
        (function(){
          var start_time= '1523894400';
          var endtime = '1527696000';
          var str = '<li class="slide-item" data-starttime="1523894400" data-endtime="1527696000">'+
                  '<a href="http://store.asus.com.cn/article-huodongyeedm-441.html" target="_blank">'+
                  '<img src="http://store.asus.com.cn/public/images/57/e1/06/8e112a4ebee3996b59de10c4472716af1e6186db.jpg?1525661509#w" title=""/>'+
                  '</a></li>';
          var str2 = '<li class="trigger-item"></li>'
          if (Shop.current_server_time && (Shop.current_server_time>start_time && Shop.current_server_time<endtime)) {
            document.write(str)
          };
        })();
      </script>
    </ul>
    <div class="page">
      <div class="flip prev over slide_btn"><a href="javascript:void(0)" class=""></a></div>
      <div class="flip next slide_btn"><a href="javascript:void(0)" class=""></a></div>

      <ul class="slide-triggers switchable-triggerBox switchable-triggerBox-1525661583617">
        <!-- <li class="trigger-item"></li>  -->
      </ul>
    </div>
  </div>
  <script>
    (function(){
      addEvent('domready',function(){
        var switchchable_time = $$('.switchable-content-time-1525661583617').getChildren()[0];
        var triggerBox_time = $$('.switchable-triggerBox-1525661583617').getChildren()[0];
        var slider_len=$('main_slide_265').getElements('.slide-item').length;
        /*var length = switchchable_time.length;
         var mincnt = 1;
         for(var i=0;i<length;i++){
         var cur_dom = switchchable_time[i];
         var j = length - mincnt;
         var cur_dom_do = triggerBox_time[j];
         if(cur_dom['dataset'] && Shop.current_server_time && cur_dom['dataset']['starttime'] && cur_dom['dataset']['endtime']){
         if(cur_dom['dataset']['starttime'] > Shop.current_server_time || cur_dom['dataset']['endtime'] < Shop.current_server_time){
         var _parentElement = cur_dom.parentNode;
         console.log(cur_dom)
         if(_parentElement){
         _parentElement.removeChild(cur_dom);
         cur_dom_do.parentNode.removeChild(cur_dom_do);
         mincnt++;
         }
         }
         }
         }*/
        $('main_slide_265').getElement('.slide-triggers').setStyle('margin-left',-((slider_len*30)/2-117)+'px')
        for (var i = 0; i < slider_len; i++) {
          $('main_slide_265').getElement('.slide-triggers').adopt(new Element('li',{
            'class':'trigger-item'
          }))
        };

        function newSwitchable (){
          new Switchable('main_slide_265',{
            haslrbtn:true,
            effect:'scrollx',
            panels:'.slide-item',
            triggers:'.trigger-item',
            autoplay:true
          });
        }
        newSwitchable();

        if ($('category_box_horizontal')) {
          $('main_slide_265').getElement('.switchable-triggerBox').setStyle('margin-left',-
                          3*30/2+'px')
        };
      });
    }());
  </script>        </div>

<div class="page">

  <div class="hs_module clearfix">
    <div class="left fl">
      <div class="fast-entry" style="height:150px">
        <ul class="clearfix">

          <li class="fast-item" style="height:75px;width:117px">
            <a href="https://content.asus.com.cn/?utm_source=asusstore&utm_medium=referral&utm_campaign=pingce001&utm_content=pingce001">
              <i class="fast-item-icon" style="background:url(${pageContext.request.contextPath}/images/12e5404dd171e56620240779477b85d2d57b2168.png)center center no-repeat;background-size:contain;"></i>
              产品评测			</a>
          </li>
          <li class="fast-item" style="height:75px;width:117px">
            <a href="http://store.asus.com.cn/article-huodongyeedm-500.html">
              <i class="fast-item-icon" style="background:url(${pageContext.request.contextPath}/images/7f26c4bfcbbda1049fcb034d9dec973955c51c5a.png)center center no-repeat;background-size:contain;"></i>
              销量排行			</a>
          </li>
          <li class="fast-item" style="height:75px;width:117px">
            <a href="http://store.asus.com.cn/article-huodongyeedm-205.html">
              <i class="fast-item-icon" style="background:url(${pageContext.request.contextPath}/images/2bd184237d4ad8278b3ed83b8620554952d9d9ef.png)center center no-repeat;background-size:contain;"></i>
              意外险			</a>
          </li>
          <li class="fast-item" style="height:75px;width:117px">
            <a href="http://asus.youdemai.com/product/product/index?uid=asusUser">
              <i class="fast-item-icon" style="background:url(${pageContext.request.contextPath}/images/63706eb04cfcaa47355f0f2b7611c7c567843745.png)center center no-repeat;background-size:contain;"></i>
              以旧换新			</a>
          </li>
        </ul>
      </div>
      <script>
        var h='75';
        $$('.fast-entry .fast-item i').setStyle('margin-top',(h/2-20)/2)
      </script>                </div>
    <div class="right">
      <div class="sys-widget coupon-widget coupon-widget-eqinfo">
        <div class="coupon-items" style="width: 33.333333%;">
          <div class="coupon-img" style="padding-left:10px;">
            <a data-cid="887" class="cp-btn J-getCoupon j-coupon-8452" title="点击领取优惠券">
              <img id="imgcp-887"  src="${pageContext.request.contextPath}/picture/8cb1457e965489231a0dc8ecce66ee68065556a3.jpg" alt="" title="">
            </a>
          </div>
          <!-- <div class="div-getCoupon" id="div-getCoupon-887"><a>立即领取</a></div> -->
        </div>
        <div class="coupon-items" style="width: 33.333333%;">
          <div class="coupon-img" style="padding-left:10px;">
            <a data-cid="886" class="cp-btn J-getCoupon j-coupon-8452" title="点击领取优惠券">
              <img id="imgcp-886"  src="${pageContext.request.contextPath}/picture/2acc60e14354dd8c8f6a4051ae87a30f70c3d805.jpg" alt="" title="">
            </a>
          </div>
          <!-- <div class="div-getCoupon" id="div-getCoupon-886"><a>立即领取</a></div> -->
        </div>
        <div class="coupon-items" style="width: 33.333333%;">
          <div class="coupon-img" style="padding-left:10px;">
            <a data-cid="885" class="cp-btn J-getCoupon j-coupon-8452" title="点击领取优惠券">
              <img id="imgcp-885"  src="${pageContext.request.contextPath}/picture/0034a355d9d626ace8c47fdc8a54e6e3f637ad31.jpg" alt="" title="">
            </a>
          </div>
          <!-- <div class="div-getCoupon" id="div-getCoupon-885"><a>立即领取</a></div> -->
        </div>
      </div>

      <script>

        $$(".j-coupon-8452").addEvent('click',function(e){
          var that = this;
          var card = this.get("data-cid");
          var image = $("imgcp-"+card);
          var col = $("div-getCoupon-"+card);
          if(that.hasClass('img-balck-whilte')) return;
          new Request({
            url:'/gallery-coupon_receive.html',
            data:'cpns_id='+card,
            onComplete:function(rs) {
              rs = JSON.parse(rs);
              if( rs.status == 'success' ){
                image.addClass('img-balck-whilte');
                // col.set('text','已领取');
                return Message.success(rs.msg);
              }else{
                Message.error(rs.msg);
                if(rs.url) location.href=rs.url;
              }
            }
          }).post();
        });

      </script>                </div>
  </div>

  <div class="hs_module clearfix">
    <div class="left fl">

    </div>
    <div class="right">

    </div>
  </div>
</div>

<div class="page">
  <div class="special-zone">
    <div class="m_top_header">
      <div class="common_header">
        <h2><i class="line"></i>特色专题</h2>
        <div class="more">
        </div>
      </div>                </div>
    <div class="clearfix">
      <div class="special-item">
        <table id="__01" width="400" height="340" border="0" cellpadding="0" cellspacing="0"> <tbody><tr> <td colspan="2"> <a href="http://store.asus.com.cn/article-huodongyeedm-404.html">
          <img src="${pageContext.request.contextPath}/picture/e789cfe73caf8a9f57f85ca19985cf511bd7d502.jpg" width="400" height="147" border="0" alt=""></a></td> </tr> <tr> <td> <a href="http://store.asus.com.cn/product-2117.html">
          <img src="${pageContext.request.contextPath}/picture/27c80b9778ab2398e7fe66729e87c1b6e0b67fb9.jpg" width="200" height="106" border="0" alt=""></a></td> <td> <a href="http://store.asus.com.cn/gallery.html?scontent=n,U4100">
          <img src="${pageContext.request.contextPath}/picture/143c59d389c11f0e54cc953f7b5fc911a086b6ed.jpg" width="200" height="106" border="0" alt=""></a></td> </tr> <tr> <td> <a href="https://content.asus.com.cn/?p=3489">
          <img src="${pageContext.request.contextPath}/picture/ee230b32c010493ba42e4e40a8c7903e9443c4f5.jpg" width="200" height="87" border="0" alt=""></a></td> <td> <a href="https://content.asus.com.cn/?p=2081">
          <img src="${pageContext.request.contextPath}/picture/7612e19a9b7b885de5edd17b817d2d6731558d4b.jpg" width="200" height="87" border="0" alt=""></a></td> </tr> </tbody></table>                    </div>
      <div class="special-item">
        <table id="__01" width="400" height="340" border="0" cellpadding="0" cellspacing="0"> <tbody><tr> <td colspan="2"><a href="https://content.asus.com.cn/?p=2095">
          <img src="${pageContext.request.contextPath}/picture/786dc7cced9bb32c92b05c4c3216f9d3140c2a4d.jpg" width="400" height="147" alt=""></a></td> </tr> <tr> <td><a href="https://content.asus.com.cn/?p=1806">
          <img src="${pageContext.request.contextPath}/picture/352649782ed306b18df0fd067338c69adab5711b.png" width="200" height="193" alt=""></a></td> <td><a href="http://store.asus.com.cn/gallery-8.html">
          <img src="${pageContext.request.contextPath}/picture/0425a579d8048de043ca2a2d942e0b515db5f22d.png" width="200" height="193" alt=""></a></td> </tr> </tbody></table>                    </div>
      <div class="special-item last">
        <table id="__01" width="400" height="340" border="0" cellpadding="0" cellspacing="0"> <tbody><tr> <td colspan="2"><a href="http://store.asus.com.cn/gallery-6.html">
          <img src="${pageContext.request.contextPath}/picture/517c46a7b2614a2a5a62a4fbe8b1c5e1991f6f1f.jpg" width="400" height="147" alt=""></a></td> </tr> <tr> <td><a href=" https://content.asus.com.cn/?p=3742">
          <img src="${pageContext.request.contextPath}/picture/c64b16b4451558de7d37c4c8e01c1c0b4e174f26.png" width="200" height="193" alt=""></a></td> <td><a href="http://store.asus.com.cn/gallery.html?scontent=n,G20">
          <img src="${pageContext.request.contextPath}/picture/dbfd190a0df07e172810dae106b872245bf4ddd2.png" width="200" height="193" alt=""></a></td> </tr> </tbody></table>                    </div>
    </div>
  </div>
</div>

<div class="page">
  <div class="hotSale com_module">
    <div class="hotSale com_module">
      <div class="common_header">
        <h2><i class="line"></i>爆款清单</h2>
        <div class="btngroup">
          <span class="iconfont icon-left off"></span>
          <span class="iconfont icon-right"></span>
        </div>
      </div>
      <div class="hot_sale">
        <ul class="clearfix" style="width:3675px">
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2931.html" target="_blank">
                <img data-src="picture/bff5dcad6a914fd561ed041c3c73e930a9f3381f.jpg" alt="飞行堡垒第五代FX80-火陨版（Windows 10 home /Intel Core i5-8300H/8GB 内存/GTX 1050 Ti 4GB/1TB+128SSD）" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2931.html" title="飞行堡垒第五代FX80-火陨版（Windows 10 home /Intel Core i5-8300H/8GB 内存/GTX 1050 Ti 4GB/1TB+128SSD）" target="_blank">
                <p class="index-goods-tit common-intro">
                  飞行堡垒第五代FX80-火陨版            </p>
                <p class="index-goods-des common-intro">
                  i5-8300H / 8GB 内存            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥6399        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2390.html" target="_blank">
                <img data-src="picture/082dbdcbdb86e4ac47755791c6d264b296490232.jpg" alt="【本配置为华硕官方加装，不影响保修】FX63VD-飞行堡垒4代游戏本（Windows 10 home+Office 2016/i5-7300HQ /8GB/128G SSD+1TB HDD）-黑色" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2390.html" title="【本配置为华硕官方加装，不影响保修】FX63VD-飞行堡垒4代游戏本（Windows 10 home+Office 2016/i5-7300HQ /8GB/128G SSD+1TB HDD）-黑色" target="_blank">
                <p class="index-goods-tit common-intro">
                  飞行堡垒4代-FX63VD游戏本            </p>
                <p class="index-goods-des common-intro">
                  铁甲神盾 / i7-7700HQ /GeForce® GTX1050            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥5499        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2302.html" target="_blank">
                <img data-src="picture/16c7e0270114985d5164c70b6aed8b71852b6e96.jpg" alt="【新品 / 全新升级8代CPU】U4100UN-灵耀窄边框轻薄笔记本（Windows10home/i7-8550U/MX150 2G/8G/512G SSD/IPS 指纹识别/纳米压印光刻技术)-尊爵蓝" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2302.html" title="【新品 / 全新升级8代CPU】U4100UN-灵耀窄边框轻薄笔记本（Windows10home/i7-8550U/MX150 2G/8G/512G SSD/IPS 指纹识别/纳米压印光刻技术)-尊爵蓝" target="_blank">
                <p class="index-goods-tit common-intro">
                  【热销】灵耀U4100UN-轻薄笔记本            </p>
                <p class="index-goods-des common-intro">
                  全新升级8代CPU /  指纹识别 / 全固态            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥8399        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2257.html" target="_blank">
                <img data-src="picture/2318d23d4f71a2dee54a0f8794d2b4bc99e2a8b6.jpg" alt="【新品上市】FL8000UN-新顽石5代电竞版游戏本（i7-8550U/MX150 4G/8G内存/128G SSD+1TB/Office2016）-灰色" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2257.html" title="【新品上市】FL8000UN-新顽石5代电竞版游戏本（i7-8550U/MX150 4G/8G内存/128G SSD+1TB/Office2016）-灰色" target="_blank">
                <p class="index-goods-tit common-intro">
                  新顽石5五代旗舰版-8代CPU            </p>
                <p class="index-goods-des common-intro">
                  MX150独显 / i7-8550U            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥5599        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2935.html" target="_blank">
                <img data-src="picture/3937e0af4abc4bf658c88e4944110a118700c93c.jpg" alt="【新品上市】飞行堡垒第五代FX80-冰魂版（Windows 10 home /Intel Core i7-8750H/8GB 内存/GTX 1050 4GB/1TB）" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2935.html" title="【新品上市】飞行堡垒第五代FX80-冰魂版（Windows 10 home /Intel Core i7-8750H/8GB 内存/GTX 1050 4GB/1TB）" target="_blank">
                <p class="index-goods-tit common-intro">
                  飞行堡垒第五代FX80-冰魂版            </p>
                <p class="index-goods-des common-intro">
                  i7-8750H / 8GB 内存            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥6499        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-1518.html" target="_blank">
                <img data-src="picture/121fa671826e4c28b33e787dea70560818671e6d.jpg" alt="U4000UQ-灵耀系列窄边框轻薄笔记本（Windows 10 home/i7-7500U/GF 940MX 2G/8G/256G SSD）玫瑰金" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-1518.html" title="U4000UQ-灵耀系列窄边框轻薄笔记本（Windows 10 home/i7-7500U/GF 940MX 2G/8G/256G SSD）玫瑰金" target="_blank">
                <p class="index-goods-tit common-intro">
                  灵耀U4000UQ-轻薄笔记本-i7            </p>
                <p class="index-goods-des common-intro">
                  6mm窄边框 / 全固态开机快            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥5799        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2929.html" target="_blank">
                <img data-src="picture/4e2dbbe3a3ce8177127402a926c20d8b358b6704.jpg" alt="【5/1日起陆续发货】【新品上市】飞行堡垒第五代FX80-星途版（Windows 10 home  /Intel Core i7-8750H/8GB 内存/GTX 1050 Ti 4GB/1TB+128SSD）" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2929.html" title="【5/1日起陆续发货】【新品上市】飞行堡垒第五代FX80-星途版（Windows 10 home  /Intel Core i7-8750H/8GB 内存/GTX 1050 Ti 4GB/1TB+128SSD）" target="_blank">
                <p class="index-goods-tit common-intro">
                  飞行堡垒第五代FX80-星途版            </p>
                <p class="index-goods-des common-intro">
                  i7-8750H / 8GB内存            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥7599        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2072.html" target="_blank">
                <img data-src="picture/47bdf45d4c6bd7964d7040eb3fd5b7a9801b75be.jpg" alt="RX310UA-灵耀轻薄笔记本（Windows 10 home/ i3-7100U/集成显卡/4G内存/128G SSD)" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2072.html" title="RX310UA-灵耀轻薄笔记本（Windows 10 home/ i3-7100U/集成显卡/4G内存/128G SSD)" target="_blank">
                <p class="index-goods-tit common-intro">
                  灵耀RX310UA-轻薄笔记本            </p>
                <p class="index-goods-des common-intro">
                  13.3英寸 / 全固态 / 背光键盘             </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥4299        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-1756.html" target="_blank">
                <img data-src="picture/b1e43fe78a297a78dfd06ef45600c9fe1e3247fc.jpg" alt="NX580VD-飞行堡垒游戏本(Windows 10 Home/i5-7300HQ/GTX1050  2G/8G/128G SSD+1TB)-冰金色" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-1756.html" title="NX580VD-飞行堡垒游戏本(Windows 10 Home/i5-7300HQ/GTX1050  2G/8G/128G SSD+1TB)-冰金色" target="_blank">
                <p class="index-goods-tit common-intro">
                  飞行堡垒-NX580VD游戏            </p>
                <p class="index-goods-des common-intro">
                  10系显卡 / 双风扇双硬盘            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥6899        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2231.html" target="_blank">
                <img data-src="picture/b4c87e89771bb4387cdca6b587692cd523e88294.jpg" alt="【全新升级intel酷睿8代处理器】A580UR-办公娱乐笔记本（i5-8250U/GF 930MX 2G/4G内存/500G硬盘/无光驱）- 多色可选" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2231.html" title="【全新升级intel酷睿8代处理器】A580UR-办公娱乐笔记本（i5-8250U/GF 930MX 2G/4G内存/500G硬盘/无光驱）- 多色可选" target="_blank">
                <p class="index-goods-tit common-intro">
                  A580UR-办公娱乐本            </p>
                <p class="index-goods-des common-intro">
                  全新升级intel酷睿8代处理器            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥3999        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-1752.html" target="_blank">
                <img data-src="picture/da505a9e356210e4783bb08b8c7b7519ff14fbcb.jpg" alt="华硕电神4长效续航智能手机" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-1752.html" title="华硕电神4长效续航智能手机" target="_blank">
                <p class="index-goods-tit common-intro">
                  电神4长效续航智能手机            </p>
                <p class="index-goods-des common-intro">
                  5000mAh长续航电池 / 120°阔景双摄            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥1399        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-1387.html" target="_blank">
                <img data-src="picture/a2c28f1d7faef5bba672ee179fe0e99c1f13c6cc.jpg" alt="Zenbook 3U-灵耀3系列轻薄笔记本（Windows 10 Home/i5-7200U/8GB/512GB SSD/office 2016）" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-1387.html" title="Zenbook 3U-灵耀3系列轻薄笔记本（Windows 10 Home/i5-7200U/8GB/512GB SSD/office 2016）" target="_blank">
                <p class="index-goods-tit common-intro">
                  灵耀3 Zenbook 3U轻薄本-i5            </p>
                <p class="index-goods-des common-intro">
                  轻约910g / 薄约11.9mm            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥9099        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-1649.html" target="_blank">
                <img data-src="picture/9943f34ef9bc4bd2ddcde7a9f4e09fa2ac211e2d.jpg" alt="华硕傲世一体机电脑V221 （21.5英寸/ Windows 10 Home /  J3355 /4GB/1TB）-黑色" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-1649.html" title="华硕傲世一体机电脑V221 （21.5英寸/ Windows 10 Home /  J3355 /4GB/1TB）-黑色" target="_blank">
                <p class="index-goods-tit common-intro">
                  傲视办公家用纤薄型一体机-V221            </p>
                <p class="index-goods-des common-intro">
                  7.22mmFHD屏 / J3355 / 1TB            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥2999        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-2442.html" target="_blank">
                <img data-src="picture/9a674749964eb583a1aceaaae0a531899da60dd4.jpg" alt="ROG玩家国度S5AS 枪神版游戏本（Windows 10 home/i7-7700HQ /16GB/ 256GB SSD+1TB）" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-2442.html" title="ROG玩家国度S5AS 枪神版游戏本（Windows 10 home/i7-7700HQ /16GB/ 256GB SSD+1TB）" target="_blank">
                <p class="index-goods-tit common-intro">
                  玩家国度-S5AS 枪神版游戏本            </p>
                <p class="index-goods-des common-intro">
                  i7-7700HQ / GTX1070 / 144Hz IPS屏            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥15099        </div>
          </li>
          <li class="hot_sale_item" >
            <div class="hot_sale_pic">
              <a href="/product-1754.html" target="_blank">
                <img data-src="picture/f0b1be1cebad76bbe3ff70e56af4436bec74ae0a.jpg" alt="S5100UQ-灵耀轻薄窄边框笔记本(Windows 10 Home/i5-7200U/GF 940MX 2G/4GB/128G SSD+500G HDD)-金色" data-img-zoom="true">
              </a>
            </div>
            <div class="hot_sale_name">
              <a href="/product-1754.html" title="S5100UQ-灵耀轻薄窄边框笔记本(Windows 10 Home/i5-7200U/GF 940MX 2G/4GB/128G SSD+500G HDD)-金色" target="_blank">
                <p class="index-goods-tit common-intro">
                  灵耀S5100UA-轻薄笔记本-i5            </p>
                <p class="index-goods-des common-intro">
                  15.6英寸 / 窄边框 / 双硬盘            </p>
              </a>
            </div>
            <div class="hot_sale_price">
              ￥5599        </div>
          </li>
        </ul>
      </div>
    </div>            </div>
</div>

<div class="page">
  <div class="ad_pic_float" style="margin-top:6px">
    <a href="" target="_blank">
      <img src="${pageContext.request.contextPath}/picture/d3ac066142d3d7d55361e0be1c69ce60eb202370.jpg" alt="送128券满4999元可使用" width="110" height="200" />
    </a>
  </div>
</div>

<div class="product_module_wrap">

  <div class="page">
    <div class="product-module clearfix">
      <div class="m_top_header">
        <div class="common_header">
          <h2><i class="line"></i>1F 笔记本</h2>
          <div class="more">
            <a href="http://store.asus.com.cn/gallery-1.html">更多<i class="iconfont icon-right"></i></a>
          </div>
        </div>                    </div>
      <div class="m_left_ad">
        <div class="banner">
          <a href="http://store.asus.com.cn/article-huodongyeedm-495.html" target="_blank">
            <img data-src="picture/48f60c494f0a45ded4109d20656e49fdbbd1b591.jpg" alt="FX80" width="243" height="630" />
          </a>
        </div>
      </div>
      <div class="m_middle_pro">
        <div id="module_272">
          <div class="hs_tab_head">
            <ul>
              <li class="tab_head_item  on">新品</li>
              <li class="tab_head_item ">轻薄本</li>
              <li class="tab_head_item ">游戏本</li>
              <li class="tab_head_item ">办公娱乐本</li>
              <li class="tab_head_item ">商用本</li>
            </ul>
          </div>
          <div class="hs_tab_body">
            <ul>
              <li class="tab_body_item" style="display:block;">
                <div class="module-slide" id="module_slide_272">
                  <ul class="slide-list switchable-content">
                    <c:forEach items="${pictureList}" var="p">
                      <li class="slide-item">
                        <a href="http://store.asus.com.cn/product-2231.html">
                          <img src="${p.url}" alt="A580"/>
                        </a>
                      </li>
                    </c:forEach>
<%--
                    <li class="slide-item">
                      <a href="http://store.asus.com.cn/product-2898.html">
                        <img src="picture/2f0dc4c9b03625c34f9a06c8e9f66fa66c84b35b.jpg" alt="PU404"/>
                      </a>
                    </li>--%>
                  </ul>
                  <div class="flip prev over slide_btn"><a href="javascript:void(0)" class=""></a></div>
                  <div class="flip next slide_btn"><a href="javascript:void(0)" class=""></a></div>

                  <ul class="slide-triggers switchable-triggerBox" style="margin-left:-80px">
                    <li class="trigger-item"></li>
                    <li class="trigger-item"></li>

                  </ul>
                </div>
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2930.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/44886a9ab81ce4b30db84725affeb83bd7b8b866.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2930.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒第五代FX80-火陨版                </p>
                        <p class="index-goods-des common-intro">
                          i7-8750H / 8GB 内存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7199</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-3023.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/40cb7855dd892070253056fcb2a3818e2171f4cd.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-3023.html">
                        <p class="index-goods-tit common-intro">
                          【新品】灵耀RX310UA轻薄笔记本                </p>
                        <p class="index-goods-des common-intro">
                          13.3英寸 /8GB内存/ 全固态                 </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2599.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/3a09397f94545ac5e1bb67484a8670d5150d9b7c.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2599.html">
                        <p class="index-goods-tit common-intro">
                          【新品】A480UR顽石畅玩笔记本                </p>
                        <p class="index-goods-des common-intro">
                          全新升级八代处理器 / 多功能触控面板                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3899</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2337.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/ce61818fa19bd660501112895709489cb920d211.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2337.html">
                        <p class="index-goods-tit common-intro">
                          【热销】灵耀U4100UN-轻薄笔记本                </p>
                        <p class="index-goods-des common-intro">
                          全新升级8代CPU /  IPS屏 / 全固态                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6899</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1754.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/8c6b7ce5183ecee612e9538340274f15d7d0af6d.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1754.html">
                        <p class="index-goods-tit common-intro">
                          灵耀S5100UA-轻薄笔记本-i5                </p>
                        <p class="index-goods-des common-intro">
                          15.6英寸 / 窄边框 / 双硬盘                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5599</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2522.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/7fabce9770a78c5a85d20a889e0c28f81f2cc112.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2522.html">
                        <p class="index-goods-tit common-intro">
                          灵耀RX310UQ-轻薄笔记本                </p>
                        <p class="index-goods-des common-intro">
                          13.3英寸 / 全固态 / IPS屏                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5899</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2372.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/84c9d807a2f875c0ca29c23de92d07d7bff779e0.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2372.html">
                        <p class="index-goods-tit common-intro">
                          灵耀U4100UQ窄边框轻薄本                </p>
                        <p class="index-goods-des common-intro">
                          纳米压印 / IPS广视角屏幕/ 全固态                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7599</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2543.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/ffe94f51b1998238cbcf8b0b77bbf57a7729df23.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2543.html">
                        <p class="index-goods-tit common-intro">
                          【新品】灵耀U3100UA窄边框轻薄本                </p>
                        <p class="index-goods-des common-intro">
                          全新八代处理器/ 全固态硬盘 / 指纹识别                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1168.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/98904cb181132083e8840488af45c464060fdf4c.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1168.html">
                        <p class="index-goods-tit common-intro">
                          灵耀3 Zenbook 3U轻薄本-i5                </p>
                        <p class="index-goods-des common-intro">
                          轻约910g / 薄约11.9mm                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥8399</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2329.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/81a82ac0698b0a4baee7683f2708c597215edd76.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2329.html">
                        <p class="index-goods-tit common-intro">
                          新顽石5五代标准版                </p>
                        <p class="index-goods-des common-intro">
                          i7-8550U  / 940MX / 多彩时尚                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5199</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1806.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/7fdd3693e255e5e7aba0a5055c09c0db8986e146.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1806.html">
                        <p class="index-goods-tit common-intro">
                          新飞行堡垒-KX53VE游戏本                </p>
                        <p class="index-goods-des common-intro">
                          GTX 1050Ti / 1TB+128G / 新7代标压CPU                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7399</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2390.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/d73d168d136bb128016d89ad3684e13fee8f5509.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2390.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒4代-FX63VD游戏本                </p>
                        <p class="index-goods-des common-intro">
                          铁甲神盾 / i7-7700HQ /GeForce® GTX1050                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1757.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/84956f12eb9b86ab68795bef7632e7b4e0785152.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1757.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒-NX580VD游戏                </p>
                        <p class="index-goods-des common-intro">
                          10系显卡 /  双风扇双硬盘                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7899</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2277.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/d73d168d136bb128016d89ad3684e13fee8f5509.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2277.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒4代-FX63VD游戏本                </p>
                        <p class="index-goods-des common-intro">
                          铁甲神盾 / i7-7700HQ / GeForce® GTX1050                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6299</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2382.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/55197aab0a12900f3913897f760a6b07a53258f1.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2382.html">
                        <p class="index-goods-tit common-intro">
                          新顽石5五代电竞版-8代CPU                </p>
                        <p class="index-goods-des common-intro">
                          MX150独显 / i7-8550U                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4899</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1941.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/8c6eec19ad0d2efd9340c4207c1486d3ec54beaa.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1941.html">
                        <p class="index-goods-tit common-intro">
                          K505BP-高效窄边框笔记本                </p>
                        <p class="index-goods-des common-intro">
                          7.7mm窄边框 / 15.6英寸 / 双硬盘                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2599.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/3a09397f94545ac5e1bb67484a8670d5150d9b7c.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2599.html">
                        <p class="index-goods-tit common-intro">
                          【新品】A480UR顽石畅玩笔记本                </p>
                        <p class="index-goods-des common-intro">
                          全新升级八代处理器 / 多功能触控面板                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3899</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1588.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/8c2bdda839ad43e62f9b660029410a90b3795da6.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1588.html">
                        <p class="index-goods-tit common-intro">
                          A441UV-效能先锋笔记本                </p>
                        <p class="index-goods-des common-intro">
                          i5-7200U / 4G / 500G                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2231.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/7fdc4e09810b59fdb961cc0c9ba001eeb254fb14.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2231.html">
                        <p class="index-goods-tit common-intro">
                          A580UR-办公娱乐本                </p>
                        <p class="index-goods-des common-intro">
                          全新升级intel酷睿8代处理器                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2660.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/c16d3639002f5293374134561f8f521b24eaae0e.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2660.html">
                        <p class="index-goods-tit common-intro">
                          【新品】E406SA-轻薄办公娱乐本                </p>
                        <p class="index-goods-des common-intro">
                          7.8mm微边框 / 长续航高速充电                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1715.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/58a285cd1d0bfa3d8297c90b15343b013c00c7ab.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1715.html">
                        <p class="index-goods-tit common-intro">
                          E403NA-轻薄便携笔记本                </p>
                        <p class="index-goods-des common-intro">
                          14英寸 / intel四核 / 板载4G                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3299</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2281.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/a967dc9e0b17bbaf059ae760e6a7e3534fcb1b55.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2281.html">
                        <p class="index-goods-tit common-intro">
                          灵珑-B9440UA纤薄商用笔记本                </p>
                        <p class="index-goods-des common-intro">
                          i5-7200U / 8GB内存 / 指纹识别                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2898.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/b20d8c0f7b5a7bc5cb35541cd4fbcf2c1ef90312.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2898.html">
                        <p class="index-goods-tit common-intro">
                          【新品】PU404UF-商用笔记本                </p>
                        <p class="index-goods-des common-intro">
                          i5-8250U / MX130 / 指纹识别                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2990.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/461878883a97a71b0ee3fdf22e2825a3827cc1bb.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2990.html">
                        <p class="index-goods-tit common-intro">
                          Pro554UB-办公商用笔记本                </p>
                        <p class="index-goods-des common-intro">
                          奔腾™ 4405U / 920MX                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4799</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2975.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/172d40c1c1716e4da255b0ae8ae5a1e2c3a5ad68.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2975.html">
                        <p class="index-goods-tit common-intro">
                          商用NB | PU404UF                </p>
                        <p class="index-goods-des common-intro">
                          i5-8250U / MX130                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2518.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/5ebf80a819d6260a2b83cc820faceb37cd731ed4.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2518.html">
                        <p class="index-goods-tit common-intro">
                          P2440UQ-商用笔记本                </p>
                        <p class="index-goods-des common-intro">
                          i5-7200U / 940MX / 智能指纹识别                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2525.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/6bec5af284ebdc471a46842127577346171ebc55.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2525.html">
                        <p class="index-goods-tit common-intro">
                          P2540UV- 商用笔记本                </p>
                        <p class="index-goods-des common-intro">
                          双显卡 / 15.6英寸                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4799</span>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <script>
          (function(){
            addEvent('domready',function(){
              var tab_body_item_len = $('module_272').getElements('.tab_head_item').length;
              if (tab_body_item_len<5) {
                $('module_272').getElements('.tab_head_item').setStyle('width',775/tab_body_item_len+'px')
              };
              $$('#module_272 .hs_tab_head li').addEvent('mouseover',function(){
                var index = $$('#module_272 .hs_tab_head li').indexOf(this)
                $(this).addClass('on').getSiblings('li').removeClass('on')
                $$('#module_272 .tab_body_item')[index].setStyle('display','block').getSiblings('.tab_body_item').setStyle('display','none')
              })
            });
            function newSwitchable (){
              new Switchable('module_slide_272',{
                haslrbtn:true,
                effect:'scrollx',
                panels:'.slide-item',
                triggers:'.trigger-item',
                autoplay:true
              });
            }
            newSwitchable();
          }());
        </script>                    </div>
      <div class="m_right_top">
        <div class="common-mod sales-charts">
          <div class="hd"><h2 class="title">本类销售榜</h2></div>
          <div class="bd">
            <ul class="goods-list clearfix">
              <li class="goods-item clearfix hot">
                <span class="num-1 goods-num">1</span>
                <div class="goods-pic">
                  <a href="/product-1518.html" target="_blank">
                    <img data-src="picture/121fa671826e4c28b33e787dea70560818671e6d.jpg" alt="U4000UQ-灵耀系列窄边框轻薄笔记本（Windows 10 home/i7-7500U/GF 940MX 2G/8G/256G SSD）玫瑰金" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1518.html" target="_blank">
                      灵耀U4000UQ-轻薄笔记本-i7            </a>
                  </h3>
                  <div class="goods-price"><i>￥5799</i></div>
                </div>
              </li>
              <li class="goods-item clearfix hot">
                <span class="num-2 goods-num">2</span>
                <div class="goods-pic">
                  <a href="/product-2326.html" target="_blank">
                    <img data-src="picture/db04681fc1bf53b685374a68a66a0b34ead30232.jpg" alt="【新品 / 全新升级8代CPU】U4100UN-灵耀窄边框轻薄笔记本（Windows10 home/i5-8250U/MX150 2G/8G/256G SSD/IPS屏)-石英灰" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2326.html" target="_blank">
                      灵耀U4100UN-轻薄笔记本            </a>
                  </h3>
                  <div class="goods-price"><i>￥6849</i></div>
                </div>
              </li>
              <li class="goods-item clearfix on">
                <span class="num-3 goods-num">3</span>
                <div class="goods-pic">
                  <a href="/product-2599.html" target="_blank">
                    <img data-src="picture/e049fa1a9e54daf3fa4c53fb7063c64d37a54c04.jpg" alt="A480UR顽石畅玩笔记本（Windows 10 home/i5-8250U/4G /500G ）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2599.html" target="_blank">
                      【新品】A480UR顽石畅玩笔记本            </a>
                  </h3>
                  <div class="goods-price"><i>￥3899</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-4 goods-num">4</span>
                <div class="goods-pic">
                  <a href="/product-2527.html" target="_blank">
                    <img data-src="picture/082dbdcbdb86e4ac47755791c6d264b296490232.jpg" alt="FX63VD-飞行堡垒4代游戏本（Windows 10 home/i7-7700HQ/GTX1050 4G/8GB内存/1TB）-黑色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2527.html" target="_blank">
                      飞行堡垒4代-FX63VD游戏本            </a>
                  </h3>
                  <div class="goods-price"><i>￥5999</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-5 goods-num">5</span>
                <div class="goods-pic">
                  <a href="/product-2522.html" target="_blank">
                    <img data-src="picture/d1c7923052249490525b03dd17f67ec808b72d77.jpg" alt="RX310UQ-灵耀13.3英寸轻薄笔记本（Windows 10 home/ GF 940MX/4G内存/128G SSD)" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2522.html" target="_blank">
                      灵耀RX310UQ-轻薄笔记本            </a>
                  </h3>
                  <div class="goods-price"><i>￥5899</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-6 goods-num">6</span>
                <div class="goods-pic">
                  <a href="/product-2329.html" target="_blank">
                    <img data-src="picture/d4f4e677a97d6883a60b8ceb39019c5eb63b7dbd.jpg" alt="【新品上市】FL8000UQ-新顽石5代标准版游戏本（i7-8550U/GF940MX 2G/8G内存/128G SSD+1TB硬盘/Office2016）-金色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2329.html" target="_blank">
                      新顽石5五代标准版            </a>
                  </h3>
                  <div class="goods-price"><i>￥5199</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-7 goods-num">7</span>
                <div class="goods-pic">
                  <a href="/product-1168.html" target="_blank">
                    <img data-src="picture/f0ea64cd1f3eb36f5b0c89b05b2286dae1875c0d.jpg" alt="Zenbook 3U-灵耀3系列轻薄笔记本（Windows 10 Home/i5-7200U/8GB/256GB SSD）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1168.html" target="_blank">
                      灵耀3 Zenbook 3U轻薄本-i5            </a>
                  </h3>
                  <div class="goods-price"><i>￥8399</i></div>
                </div>
              </li>
              <li class="goods-item clearfix last">
                <span class="num-8 goods-num">8</span>
                <div class="goods-pic">
                  <a href="/product-1763.html" target="_blank">
                    <img data-src="picture/ce87b10466dc8d53fd412bf3dc6ab3d5b935f0f8.jpg" alt="【新款推荐】S5100UA-灵耀轻薄窄边框笔记本(Windows 10 Home/i5-7200U/集显/8GB/256G SSD)-金色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1763.html" target="_blank">
                      灵耀S5100UA-轻薄笔记本-i5            </a>
                  </h3>
                  <div class="goods-price"><i>￥6049</i></div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="page">

  </div>

  <div class="page">
    <div class="product-module clearfix">
      <div class="m_top_header">
        <div class="common_header">
          <h2><i class="line"></i>2F 电竞游戏专区</h2>
          <div class="more">
            <a href="http://store.asus.com.cn/gallery-6.html">更多<i class="iconfont icon-right"></i></a>
          </div>
        </div>                    </div>
      <div class="m_left_ad">
        <div class="banner">
          <a href="http://store.asus.com.cn/gallery-2.html" target="_blank">
            <img data-src="picture/cf986b178a086b5ad527a6be75d721d90cac5e45.jpg" alt="" width="244" height="630" />
          </a>
        </div>
      </div>
      <div class="m_middle_pro">
        <div id="module_273">
          <div class="hs_tab_head">
            <ul>
              <li class="tab_head_item  on">游戏本新品区</li>
              <li class="tab_head_item ">玩家国度游戏本</li>
              <li class="tab_head_item ">电竞游戏主机</li>
              <li class="tab_head_item ">电竞组装</li>
            </ul>
          </div>
          <div class="hs_tab_body">
            <ul>
              <li class="tab_body_item" style="display:block;">
                <div class="module-slide" id="module_slide_273">
                  <ul class="slide-list switchable-content">
                    <li class="slide-item">
                      <a href="http://store.asus.com.cn/gallery.html?scontent=n,FX80">
                        <img src="${pageContext.request.contextPath}/picture/1185483bf2272080597f2edd39ff2be28e10a041.jpg" alt="FX80"/>
                      </a>
                    </li>
                    <li class="slide-item">
                      <a href="http://store.asus.com.cn/gallery.html?scontent=n,FX63VD">
                        <img src="${pageContext.request.contextPath}/picture/8bc80662ec313d9030aa38d5e661d8460ac7c69a.jpg" alt="FX63VD"/>
                      </a>
                    </li>
                  </ul>
                  <div class="flip prev over slide_btn"><a href="javascript:void(0)" class=""></a></div>
                  <div class="flip next slide_btn"><a href="javascript:void(0)" class=""></a></div>

                  <ul class="slide-triggers switchable-triggerBox" style="margin-left:-80px">
                    <li class="trigger-item"></li>
                    <li class="trigger-item"></li>

                  </ul>
                </div>
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2931.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/0c3e8ae9de5009453f8b6db3cd5d9339b6835a3d.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2931.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒第五代FX80-火陨版                </p>
                        <p class="index-goods-des common-intro">
                          i5-8300H / 8GB 内存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6399</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2390.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/d73d168d136bb128016d89ad3684e13fee8f5509.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2390.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒4代-FX63VD游戏本                </p>
                        <p class="index-goods-des common-intro">
                          铁甲神盾 / i7-7700HQ /GeForce® GTX1050                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2328.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/e181e8a4abd1f260ebca6ab920f34490237850a3.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2328.html">
                        <p class="index-goods-tit common-intro">
                          新顽石5五代电竞版-8代CPU                </p>
                        <p class="index-goods-des common-intro">
                          MX150独显 / i7-8550U                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4899</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1442.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/27bbc971542025824e7fcf03ec45a4deb09c5566.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1442.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-GX800VH笔记本                </p>
                        <p class="index-goods-des common-intro">
                          双显卡双电源 / 创新型水冷底座 / 4K UHD屏                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥69999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-296.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/c9ea493704ed78d861ecbf20b470336ecfc5e775.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-296.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-GX700VO游戏本                </p>
                        <p class="index-goods-des common-intro">
                          分体式水冷拓展坞 / 可一步超频至4.0GHz / G-SYNC                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥20999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1714.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1e1e087326bc8717c366ed24a13e83521bf4c223.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1714.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-S5VS笔记本                </p>
                        <p class="index-goods-des common-intro">
                          i7旗舰四核八线处理器 / VR Ready                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥17099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1614.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/27b9d72136eff0f3097e74bfad7cc123d03ec062.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1614.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-GFX72VS游戏本                </p>
                        <p class="index-goods-des common-intro">
                          独立散热模组 / GTX10系列显卡 / i7-7820HK                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥24099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1626.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/2e0107eea87ba3625301905f6623844ce4b68a07.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1626.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-S7VM笔记本                </p>
                        <p class="index-goods-des common-intro">
                          120Hz广视角面板 / G-SYNC / i7-7700HQ                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥12699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1548.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/4ab71195c2aa1d6fdc33ce82e3a90d9ccb959459.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1548.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-GFX72VS游戏本                </p>
                        <p class="index-goods-des common-intro">
                          独立散热模组 / GTX10系列显卡                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥17099</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1737.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/acf0cb602553b3f3111f52e80b013d5bff69d2b0.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1737.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-ROG G20 系列                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700 / GTX1080 8GB /16G*2                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥19999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1720.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/0e4cfab6a1753093fa86c5234f1bf5a32e1676aa.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1720.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-GD30原力觉醒系列                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700 / 16G*2 / 创意DIY面板                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥19999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1736.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/acf0cb602553b3f3111f52e80b013d5bff69d2b0.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1736.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-ROG G20 系列                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700 / GTX1070 8GB / 16G                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥14999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2561.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1631626d06786b71611b6111c1d507a7d368e060.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2561.html">
                        <p class="index-goods-tit common-intro">
                          顽石台式机-M32CD                </p>
                        <p class="index-goods-des common-intro">
                          I3-6098P / 4GB内存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1414.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/c05a0a5c07d031f291de6f5a51860a2fe42e6a46.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1414.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-ROG GT51系列                </p>
                        <p class="index-goods-des common-intro">
                          涡轮进气口 / 透视机身 / 一键超频                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥19999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2891.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1b9561244456fa6828e56daa4da03f45017e0017.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2891.html">
                        <p class="index-goods-tit common-intro">
                          顽石台式机-M32CD                </p>
                        <p class="index-goods-des common-intro">
                          G3930 / 4GB内存 / 1TB                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3300</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-104.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/4b6465079e3aed68ba1b74ed885e694fa563ecd9.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-104.html">
                        <p class="index-goods-tit common-intro">
                          RT-AC5300智能路由器                </p>
                        <p class="index-goods-des common-intro">
                          三频段千兆 / 1.4GHz双核AMR处理器                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1711.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/9440f3c8084fdf0972d638bc49040a4ce556dc87.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1711.html">
                        <p class="index-goods-tit common-intro">
                          PG258Q玩家国度游戏显示器                </p>
                        <p class="index-goods-des common-intro">
                          240Hz高刷新率畅快电竞 / 1ms响应                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1569.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/5fc3563944bf171d4c979d8c8fe6409374c23e0e.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1569.html">
                        <p class="index-goods-tit common-intro">
                          电竞显示器ROG PG248Q                </p>
                        <p class="index-goods-des common-intro">
                          1ms快速响应 / 可达180Hz刷新率                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2446.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/91401ee83e23decaaff0f92520d96837b652f2db.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2446.html">
                        <p class="index-goods-tit common-intro">
                          【新品】ROG玩家国度系列-显卡                </p>
                        <p class="index-goods-des common-intro">
                          GDDR5 8GB显存 / 1759MHZ超频模式                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5599</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1877.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/9cffe0538f75d9ed8037f5b4e499d1dc0b563769.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1877.html">
                        <p class="index-goods-tit common-intro">
                          ROG猛禽系列-显卡                </p>
                        <p class="index-goods-des common-intro">
                          1392MHz动态超频 / 热管直触双风扇设计                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1899</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2515.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/02b466a1890872cf28c0f4029d05483f49364784.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2515.html">
                        <p class="index-goods-tit common-intro">
                          【新品】ROG猛禽STRIX Z370-G GAMING (WI-FI AC)主板                </p>
                        <p class="index-goods-des common-intro">
                          华硕 PRO CLOCK超频技术 / 智能散热                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1999</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                </div>
              </li>
            </ul>
          </div>
        </div>
        <script>
          (function(){
            addEvent('domready',function(){
              var tab_body_item_len = $('module_273').getElements('.tab_head_item').length;
              if (tab_body_item_len<5) {
                $('module_273').getElements('.tab_head_item').setStyle('width',775/tab_body_item_len+'px')
              };
              $$('#module_273 .hs_tab_head li').addEvent('mouseover',function(){
                var index = $$('#module_273 .hs_tab_head li').indexOf(this)
                $(this).addClass('on').getSiblings('li').removeClass('on')
                $$('#module_273 .tab_body_item')[index].setStyle('display','block').getSiblings('.tab_body_item').setStyle('display','none')
              })
            });
            function newSwitchable (){
              new Switchable('module_slide_273',{
                haslrbtn:true,
                effect:'scrollx',
                panels:'.slide-item',
                triggers:'.trigger-item',
                autoplay:true
              });
            }
            newSwitchable();
          }());
        </script>                    </div>
      <div class="m_right_top">
        <div class="common-mod sales-charts">
          <div class="hd"><h2 class="title">本类销售榜</h2></div>
          <div class="bd">
            <ul class="goods-list clearfix">
              <li class="goods-item clearfix hot">
                <span class="num-1 goods-num">1</span>
                <div class="goods-pic">
                  <a href="/product-2527.html" target="_blank">
                    <img data-src="picture/082dbdcbdb86e4ac47755791c6d264b296490232.jpg" alt="FX63VD-飞行堡垒4代游戏本（Windows 10 home/i7-7700HQ/GTX1050 4G/8GB内存/1TB）-黑色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2527.html" target="_blank">
                      飞行堡垒4代-FX63VD游戏本            </a>
                  </h3>
                  <div class="goods-price"><i>￥5999</i></div>
                </div>
              </li>
              <li class="goods-item clearfix hot">
                <span class="num-2 goods-num">2</span>
                <div class="goods-pic">
                  <a href="/product-2328.html" target="_blank">
                    <img data-src="picture/02b6859ba2aca6f6b7060b47c9676d62d2d4dd32.jpg" alt="【新品上市】FL8000UN-新顽石5代电竞版游戏本（i7-8550U/MX150 4G/4G内存/1TB硬盘/Office2016）-金色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2328.html" target="_blank">
                      新顽石5五代电竞版-8代CPU            </a>
                  </h3>
                  <div class="goods-price"><i>￥4899</i></div>
                </div>
              </li>
              <li class="goods-item clearfix on">
                <span class="num-3 goods-num">3</span>
                <div class="goods-pic">
                  <a href="/product-1548.html" target="_blank">
                    <img data-src="picture/fe9bb0ec5296b97162d61180808926bae3ae8f98.jpg" alt="GFX72VS-玩家国度笔记本（Windows 10 Home/i7-7700HQ/GTX1070 8G/8G/1TB+256G SSD）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1548.html" target="_blank">
                      玩家国度-GFX72VS游戏本            </a>
                  </h3>
                  <div class="goods-price"><i>￥17099</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-4 goods-num">4</span>
                <div class="goods-pic">
                  <a href="/product-2442.html" target="_blank">
                    <img data-src="picture/9a674749964eb583a1aceaaae0a531899da60dd4.jpg" alt="ROG玩家国度S5AS 枪神版游戏本（Windows 10 home/i7-7700HQ /16GB/ 256GB SSD+1TB）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2442.html" target="_blank">
                      玩家国度-S5AS 枪神版游戏本            </a>
                  </h3>
                  <div class="goods-price"><i>￥15099</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-5 goods-num">5</span>
                <div class="goods-pic">
                  <a href="/product-1758.html" target="_blank">
                    <img data-src="picture/6f1d4d36a9ae3017346c77673c4aa2bed9553a1e.jpg" alt="NX580VD-飞行堡垒游戏本(Windows 10 Home/i5-7300HQ/GTX1050  2G/4G/1TB)-冰金色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1758.html" target="_blank">
                      飞行堡垒-NX580VD游戏本            </a>
                  </h3>
                  <div class="goods-price"><i>￥5899</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-6 goods-num">6</span>
                <div class="goods-pic">
                  <a href="/product-2390.html" target="_blank">
                    <img data-src="picture/082dbdcbdb86e4ac47755791c6d264b296490232.jpg" alt="【本配置为华硕官方加装，不影响保修】FX63VD-飞行堡垒4代游戏本（Windows 10 home+Office 2016/i5-7300HQ /8GB/128G SSD+1TB HDD）-黑色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2390.html" target="_blank">
                      飞行堡垒4代-FX63VD游戏本            </a>
                  </h3>
                  <div class="goods-price"><i>￥5499</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-7 goods-num">7</span>
                <div class="goods-pic">
                  <a href="/product-2017.html" target="_blank">
                    <img data-src="picture/5782be79d46582cd96e139c930e3e285862119ce.jpg" alt="【送1年意外险】ROG GX501VI冰刃玩家国度笔记本（i7-7700HQ/16G内存/15.6英寸）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2017.html" target="_blank">
                      冰刃玩家国度-GX501            </a>
                  </h3>
                  <div class="goods-price"><i>￥27099</i></div>
                </div>
              </li>
              <li class="goods-item clearfix last">
                <span class="num-8 goods-num">8</span>
                <div class="goods-pic">
                  <a href="/product-2922.html" target="_blank">
                    <img data-src="picture/9a674749964eb583a1aceaaae0a531899da60dd4.jpg" alt="【新品上市】ROG玩家国度-S5AS枪神版游戏本（Windows 10 home/i7-7700HQ/8G内存/256GB PCIE SSD/GTX1070/144Hz IPS屏）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2922.html" target="_blank">
                      玩家国度-S5AS 枪神版游戏本            </a>
                  </h3>
                  <div class="goods-price"><i>￥14099</i></div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="page">

  </div>

  <div class="page">
    <div class="product-module clearfix">
      <div class="m_top_header">
        <div class="common_header">
          <h2><i class="line"></i>3F一体电脑 /台式</h2>
          <div class="more">
            <a href="http://store.asus.com.cn/gallery-11.html">更多<i class="iconfont icon-right"></i></a>
          </div>
        </div>                    </div>
      <div class="m_left_ad">
        <div class="banner">
          <a href="http://store.asus.com.cn/gallery.html?scontent=n,V241" target="_blank">
            <img data-src="picture/7eaaf245721516904b03ebdb68d36830016aa418.jpg" alt="" width="244" height="630" />
          </a>
        </div>
      </div>
      <div class="m_middle_pro">
        <div id="module_269">
          <div class="hs_tab_head">
            <ul>
              <li class="tab_head_item  on">新品</li>
              <li class="tab_head_item ">游戏主机</li>
              <li class="tab_head_item ">一体机</li>
              <li class="tab_head_item ">家用主机</li>
            </ul>
          </div>
          <div class="hs_tab_body">
            <ul>
              <li class="tab_body_item" style="display:block;">
                <div class="module-slide" id="module_slide_269">
                  <ul class="slide-list switchable-content">
                    <li class="slide-item">
                      <a href="http://store.asus.com.cn/product-2315.html">
                        <img src="${pageContext.request.contextPath}/picture/15413e3cc3d4b5520bca3aea883616460cc48338.jpg" alt="Z6000"/>
                      </a>
                    </li>
                    <li class="slide-item">
                      <a href="http://store.asus.com.cn/article-huodongyeedm-477.html">
                        <img src="${pageContext.request.contextPath}/picture/466018a412e28c5a62e6f71107400fe88a441fcc.jpg" alt="整机排行"/>
                      </a>
                    </li>
                  </ul>
                  <div class="flip prev over slide_btn"><a href="javascript:void(0)" class=""></a></div>
                  <div class="flip next slide_btn"><a href="javascript:void(0)" class=""></a></div>

                  <ul class="slide-triggers switchable-triggerBox" style="margin-left:-80px">
                    <li class="trigger-item"></li>
                    <li class="trigger-item"></li>

                  </ul>
                </div>
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2315.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/debeaa057fea8c41372a9cc312f536a2fea19980.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2315.html">
                        <p class="index-goods-tit common-intro">
                          傲世一体机电脑Z6000                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700HQ / 16GB / 1TB+256G                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥9999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2561.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1631626d06786b71611b6111c1d507a7d368e060.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2561.html">
                        <p class="index-goods-tit common-intro">
                          顽石台式机-M32CD                </p>
                        <p class="index-goods-des common-intro">
                          I3-6098P / 4GB内存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2558.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/c781a45d32f1e172988d9028c3107e67f7b2a572.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2558.html">
                        <p class="index-goods-tit common-intro">
                          傲世锋刃微框一体机-V241                </p>
                        <p class="index-goods-des common-intro">
                          约2mm锋刃微框 / 23.8英寸FHD屏                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4299</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1737.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/acf0cb602553b3f3111f52e80b013d5bff69d2b0.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1737.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-ROG G20 系列                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700 / GTX1080 8GB /16G*2                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥19999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1720.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/0e4cfab6a1753093fa86c5234f1bf5a32e1676aa.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1720.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-GD30原力觉醒系列                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700 / 16G*2 / 创意DIY面板                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥19999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1736.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/acf0cb602553b3f3111f52e80b013d5bff69d2b0.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1736.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-ROG G20 系列                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700 / GTX1070 8GB / 16G                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥14999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2891.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1b9561244456fa6828e56daa4da03f45017e0017.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2891.html">
                        <p class="index-goods-tit common-intro">
                          顽石台式机-M32CD                </p>
                        <p class="index-goods-des common-intro">
                          G3930 / 4GB内存 / 1TB                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3300</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1414.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/c05a0a5c07d031f291de6f5a51860a2fe42e6a46.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1414.html">
                        <p class="index-goods-tit common-intro">
                          玩家国度-ROG GT51系列                </p>
                        <p class="index-goods-des common-intro">
                          涡轮进气口 / 透视机身 / 一键超频                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥19999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1735.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/193121d5ae299955fd7c6a158ed3ed55ce6ab520.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1735.html">
                        <p class="index-goods-tit common-intro">
                          灵睿台式机-K20系列                </p>
                        <p class="index-goods-des common-intro">
                          i3-7100 / 4G / 1T+128SSD                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3799</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2315.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/debeaa057fea8c41372a9cc312f536a2fea19980.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2315.html">
                        <p class="index-goods-tit common-intro">
                          傲世一体机电脑Z6000                </p>
                        <p class="index-goods-des common-intro">
                          i7-7700HQ / 16GB / 1TB+256G                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥9999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1842.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/05379a561e45de3b4a3ee98e9db6b85410db69df.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1842.html">
                        <p class="index-goods-tit common-intro">
                          傲视办公家用纤薄型一体机-V221                </p>
                        <p class="index-goods-des common-intro">
                          7.22mmFHD屏 / J3355 / 256GSSD                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3299</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1507.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/e4d798961fabf05fb6988abeb39dc800262f19ba.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1507.html">
                        <p class="index-goods-tit common-intro">
                          傲视一体机-V241-ZenAiO系列                </p>
                        <p class="index-goods-des common-intro">
                          i3-6006U / 940MX / 1TB                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-930.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/d23f141bd934ce7d25af4a8386b5723625eea6e6.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-930.html">
                        <p class="index-goods-tit common-intro">
                          傲世一体机电脑-Z220-ZenAiO系列                </p>
                        <p class="index-goods-des common-intro">
                          G4400 / 4GB / 500GB                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1740.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/6cce6e57fc88b323f4e54b510ddde88f8f8da843.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1740.html">
                        <p class="index-goods-tit common-intro">
                          傲视锋刃微框一体机-V241                </p>
                        <p class="index-goods-des common-intro">
                          930MX / 约2mm锋刃微框 / 23.8英寸FHD屏                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4799</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-3025.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/0da0fdb4e26a6eae7f4326c693ea0b03b71f322c.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-3025.html">
                        <p class="index-goods-tit common-intro">
                          傲视办公家用纤薄型一体机-V221                </p>
                        <p class="index-goods-des common-intro">
                          7.22mmFHD屏 / J4205 / 256G SSD                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3699</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1735.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/193121d5ae299955fd7c6a158ed3ed55ce6ab520.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1735.html">
                        <p class="index-goods-tit common-intro">
                          灵睿台式机-K20系列                </p>
                        <p class="index-goods-des common-intro">
                          i3-7100 / 4G / 1T+128SSD                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3799</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2891.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1b9561244456fa6828e56daa4da03f45017e0017.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2891.html">
                        <p class="index-goods-tit common-intro">
                          顽石台式机-M32CD                </p>
                        <p class="index-goods-des common-intro">
                          G3930 / 4GB内存 / 1TB                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3300</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-3000.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/193121d5ae299955fd7c6a158ed3ed55ce6ab520.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-3000.html">
                        <p class="index-goods-tit common-intro">
                          灵睿台式机-K20系列                </p>
                        <p class="index-goods-des common-intro">
                          i3-7100 / 4G / 1T+128SSD                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3949</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2999.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/193121d5ae299955fd7c6a158ed3ed55ce6ab520.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2999.html">
                        <p class="index-goods-tit common-intro">
                          灵睿台式机-K20系列                </p>
                        <p class="index-goods-des common-intro">
                          i3-7100 / 4G / 1T+128SSD                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2366.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1b22ec195e4bb6f7e61f681a6b6e0ba089794d24.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2366.html">
                        <p class="index-goods-tit common-intro">
                        </p>
                        <p class="index-goods-des common-intro">
                          商用台式机D830MT（i5-7500/4G/ 500G）                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5600</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2365.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/164237458cf55381cf62ee60acc584ebc10c02aa.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2365.html">
                        <p class="index-goods-tit common-intro">
                        </p>
                        <p class="index-goods-des common-intro">
                          商用台式机D630MT（i5-7500/4G/500G）                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6000</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2930.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/44886a9ab81ce4b30db84725affeb83bd7b8b866.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2930.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒第五代FX80-火陨版                </p>
                        <p class="index-goods-des common-intro">
                          i7-8750H / 8GB 内存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7199</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2931.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/0c3e8ae9de5009453f8b6db3cd5d9339b6835a3d.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2931.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒第五代FX80-火陨版                </p>
                        <p class="index-goods-des common-intro">
                          i5-8300H / 8GB 内存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6399</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2929.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/7cb62ab487718d1de61d2de66ddfd2fb0870f277.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2929.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒第五代FX80-星途版                </p>
                        <p class="index-goods-des common-intro">
                          i7-8750H / 8GB内存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7599</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1379.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/e8877ed5e4024657c0651d61126d138dc0fa0593.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1379.html">
                        <p class="index-goods-tit common-intro">
                          【热销】灵耀U4000UQ轻薄本                </p>
                        <p class="index-goods-des common-intro">
                          6mm窄边框 / 全固态开机快                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6299</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2277.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/d73d168d136bb128016d89ad3684e13fee8f5509.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2277.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒4代-FX63VD游戏本                </p>
                        <p class="index-goods-des common-intro">
                          铁甲神盾 / i7-7700HQ / GeForce® GTX1050                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6299</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2700.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/d73d168d136bb128016d89ad3684e13fee8f5509.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2700.html">
                        <p class="index-goods-tit common-intro">
                          飞行堡垒4代-FX63VD游戏本                </p>
                        <p class="index-goods-des common-intro">
                          铁甲神盾 /GeForce® GTX1050                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5099</span>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <script>
          (function(){
            addEvent('domready',function(){
              var tab_body_item_len = $('module_269').getElements('.tab_head_item').length;
              if (tab_body_item_len<5) {
                $('module_269').getElements('.tab_head_item').setStyle('width',775/tab_body_item_len+'px')
              };
              $$('#module_269 .hs_tab_head li').addEvent('mouseover',function(){
                var index = $$('#module_269 .hs_tab_head li').indexOf(this)
                $(this).addClass('on').getSiblings('li').removeClass('on')
                $$('#module_269 .tab_body_item')[index].setStyle('display','block').getSiblings('.tab_body_item').setStyle('display','none')
              })
            });
            function newSwitchable (){
              new Switchable('module_slide_269',{
                haslrbtn:true,
                effect:'scrollx',
                panels:'.slide-item',
                triggers:'.trigger-item',
                autoplay:true
              });
            }
            newSwitchable();
          }());
        </script>                    </div>
      <div class="m_right_top">
        <div class="common-mod sales-charts">
          <div class="hd"><h2 class="title">本类销售榜</h2></div>
          <div class="bd">
            <ul class="goods-list clearfix">
              <li class="goods-item clearfix hot">
                <span class="num-1 goods-num">1</span>
                <div class="goods-pic">
                  <a href="/product-1900.html" target="_blank">
                    <img data-src="picture/2e56d52f5ecf6b9a7df4505fcfb4989145f355ee.jpg" alt="傲世一体机电脑 V241 （23.8英寸/Windows 10 Home/i3-6006U/930MX/4G/500GB）-黑耀金" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1900.html" target="_blank">
                      傲世一体机-V241            </a>
                  </h3>
                  <div class="goods-price"><i>￥4699</i></div>
                </div>
              </li>
              <li class="goods-item clearfix hot">
                <span class="num-2 goods-num">2</span>
                <div class="goods-pic">
                  <a href="/product-930.html" target="_blank">
                    <img data-src="picture/22a3c291489d84bd88b5fe073f426017c45cccd5.jpg" alt="【直降1000】华硕傲世一体机电脑Z220（21.5英寸/Windows 10 Home/ G4400/930M/4GB/500GB）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-930.html" target="_blank">
                      傲世一体机电脑-Z220-ZenAiO系列            </a>
                  </h3>
                  <div class="goods-price"><i>￥3999</i></div>
                </div>
              </li>
              <li class="goods-item clearfix on">
                <span class="num-3 goods-num">3</span>
                <div class="goods-pic">
                  <a href="/product-2561.html" target="_blank">
                    <img data-src="picture/5467080f380701641b7345f586a284e82004c4cf.jpg" alt="顽石台式机电脑M32CD-I60F4A1（Windows 10 Home /i3-6098p/4GB/128GB）-银色机身橘色底" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2561.html" target="_blank">
                      顽石台式机-M32CD            </a>
                  </h3>
                  <div class="goods-price"><i>￥3699</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-4 goods-num">4</span>
                <div class="goods-pic">
                  <a href="/product-1507.html" target="_blank">
                    <img data-src="picture/d5dcd79bb2a2f7cbd70b0f82ed83d28a0bbf231f.jpg" alt="华硕傲世一体机电脑ZN241 （23.8英寸/Windows 10 Home /i3-6006U /940MX/4G /1TB）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1507.html" target="_blank">
                      傲视一体机-V241-ZenAiO系列            </a>
                  </h3>
                  <div class="goods-price"><i>￥4499</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-5 goods-num">5</span>
                <div class="goods-pic">
                  <a href="/product-2558.html" target="_blank">
                    <img data-src="picture/2ef3c2b9d0478e49ed46ef397c80b3a8e78c88f3.jpg" alt="V241  傲世锋刃微框23.8英寸一体机（i3-7100U/4GB/1TB）-黑耀金" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2558.html" target="_blank">
                      傲世锋刃微框一体机-V241            </a>
                  </h3>
                  <div class="goods-price"><i>￥4299</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-6 goods-num">6</span>
                <div class="goods-pic">
                  <a href="/product-1414.html" target="_blank">
                    <img data-src="picture/a255977d29dd8ffd88e47ea9adbcedfa2376085d.jpg" alt="华硕玩家国度ROG GT51CH-I77BAM2游戏台式机 （Windows 10 Home /i7-7700K/GTX1070 8GB/16G/2TB+512G SSD深灰色）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1414.html" target="_blank">
                      玩家国度-ROG GT51系列            </a>
                  </h3>
                  <div class="goods-price"><i>￥19999</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-7 goods-num">7</span>
                <div class="goods-pic">
                  <a href="/product-2891.html" target="_blank">
                    <img data-src="picture/745752dbc342c15edac474a3f7ad844f3ac29698.jpg" alt="顽石台式机电脑M32CD-G3914A2（G3930/4GB/1TB）+VS228   21.5英寸显示器-银色机身橘色底" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2891.html" target="_blank">
                      顽石台式机-M32CD            </a>
                  </h3>
                  <div class="goods-price"><i>￥3300</i></div>
                </div>
              </li>
              <li class="goods-item clearfix last">
                <span class="num-8 goods-num">8</span>
                <div class="goods-pic">
                  <a href="/product-1737.html" target="_blank">
                    <img data-src="picture/51f198de054aa366515dddface4afb8fc4e3441c.jpg" alt="【三年上门服务】玩家国度ROG G20CI-I77IBM1 游戏台式机电脑（Windows 10 Home/i7-7700 /GTX1080 8GB/16G*2/2TB + 256GB SSD）" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1737.html" target="_blank">
                      玩家国度-ROG G20 系列            </a>
                  </h3>
                  <div class="goods-price"><i>￥19999</i></div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="page">

  </div>

  <div class="page">
    <div class="product-module clearfix">
      <div class="m_top_header">
        <div class="common_header">
          <h2><i class="line"></i>4F 手机/平板</h2>
          <div class="more">
            <a href="http://store.asus.com.cn/gallery-20.html">更多<i class="iconfont icon-right"></i></a>
          </div>
        </div>                    </div>
      <div class="m_left_ad">
        <div class="banner">
          <a href="http://store.asus.com.cn/product-2409.html" target="_blank">
            <img data-src="picture/35d149f1c7e089b024f2e39a04b13f3d82f1dabc.jpg" alt="" width="244" height="630" />
          </a>
        </div>
      </div>
      <div class="m_middle_pro">
        <div id="module_270">
          <div class="hs_tab_head">
            <ul>
              <li class="tab_head_item  on">新品</li>
              <li class="tab_head_item ">手机</li>
              <li class="tab_head_item ">平板/变形本</li>
              <li class="tab_head_item ">配件</li>
            </ul>
          </div>
          <div class="hs_tab_body">
            <ul>
              <li class="tab_body_item" style="display:block;">
                <div class="module-slide" id="module_slide_270">
                  <ul class="slide-list switchable-content">
                    <li class="slide-item">
                      <a href="http://store.asus.com.cn/product-1752.html">
                        <img src="${pageContext.request.contextPath}/picture/74fd50a8a68994b1c310385eb02e84c346537eab.jpg" alt="电神4"/>
                      </a>
                    </li>
                  </ul>
                  <div class="flip prev over slide_btn"><a href="javascript:void(0)" class=""></a></div>
                  <div class="flip next slide_btn"><a href="javascript:void(0)" class=""></a></div>

                  <ul class="slide-triggers switchable-triggerBox" style="margin-left:-40px">
                    <li class="trigger-item"></li>

                  </ul>
                </div>
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2242.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/f86b7935f08f3251211f56461e1e8fbaf9850e1a.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2242.html">
                        <p class="index-goods-tit common-intro">
                          灵智S智能美拍手机                </p>
                        <p class="index-goods-des common-intro">
                          2400万高清自拍 / 2倍亮度夜拍                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1151.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/711ddff8360ae60ed1e93e5865f43fb6624a7eb2.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1151.html">
                        <p class="index-goods-tit common-intro">
                          ZenPad 3S 10 平板电脑                </p>
                        <p class="index-goods-des common-intro">
                          5组安全指纹别 / 薄仅5.8mm                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1411.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/e701f2f3cfef6fc0dc4623c49fa31361a7178eac.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1411.html">
                        <p class="index-goods-tit common-intro">
                          鹰眼3智能美拍手机                </p>
                        <p class="index-goods-des common-intro">
                          5000mAh大容量  / 12倍数码变焦                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3699</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1411.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/e701f2f3cfef6fc0dc4623c49fa31361a7178eac.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1411.html">
                        <p class="index-goods-tit common-intro">
                          鹰眼3智能美拍手机                </p>
                        <p class="index-goods-des common-intro">
                          5000mAh大容量  / 12倍数码变焦                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1752.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/62cb63cadcee565be27ee79ab4d084c38db7d288.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1752.html">
                        <p class="index-goods-tit common-intro">
                          电神4长效续航智能手机                </p>
                        <p class="index-goods-des common-intro">
                          5000mAh长续航电池 / 120°阔景双摄                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1399</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2253.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/b056ee8bb1dc7bf150df0941f4c1270e583b9d70.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2253.html">
                        <p class="index-goods-tit common-intro">
                          灵智ZE552KL美拍手机                </p>
                        <p class="index-goods-des common-intro">
                          晓龙8核CPU / 0.03秒快速对焦                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2242.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/f86b7935f08f3251211f56461e1e8fbaf9850e1a.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2242.html">
                        <p class="index-goods-tit common-intro">
                          灵智S智能美拍手机                </p>
                        <p class="index-goods-des common-intro">
                          2400万高清自拍 / 2倍亮度夜拍                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2409.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/1d18dd44ba42265d949580566f837cc03e53a33d.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2409.html">
                        <p class="index-goods-tit common-intro">
                          飞马4S智能美拍手机                </p>
                        <p class="index-goods-des common-intro">
                          4130mAh电池 / 1600万+800万后置高清双摄                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1799</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1827.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/180007175ef1f75fe3f8b6c4bcdd7db4dd153482.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1827.html">
                        <p class="index-goods-tit common-intro">
                          飞马4A 长效续航智能手机                </p>
                        <p class="index-goods-des common-intro">
                          0.5秒指纹解锁 / 全网通长效续航                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1599</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1945.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/a2623f9246c1ecceff39211dc0bf13f5bb46481c.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1945.html">
                        <p class="index-goods-tit common-intro">
                          【赠品价值897元】灵焕3ProT304变形笔记本                </p>
                        <p class="index-goods-des common-intro">
                          指纹快速登入 /  薄约9.3mm                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥11488</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2227.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/13cc1a5fb3a542b2a9f24ab4e4d4f694cc3bfaf8.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2227.html">
                        <p class="index-goods-tit common-intro">
                          飞马10S平板电脑                </p>
                        <p class="index-goods-des common-intro">
                          178°广视角 / 轻薄 时尚编制压花                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1151.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/711ddff8360ae60ed1e93e5865f43fb6624a7eb2.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1151.html">
                        <p class="index-goods-tit common-intro">
                          ZenPad 3S 10 平板电脑                </p>
                        <p class="index-goods-des common-intro">
                          5组安全指纹别 / 薄仅5.8mm                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2625.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/9cc9c0a2035caefbd886146a8d411f7e672d41fb.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2625.html">
                        <p class="index-goods-tit common-intro">
                          TP461灵耀360翻转变形本-i7                </p>
                        <p class="index-goods-des common-intro">
                          全新升级八代处理器 / 全铝合金机身 / 全固态硬盘                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥9799</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2886.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/bb7198bdbac89f52f49e31828e36fbde37662509.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2886.html">
                        <p class="index-goods-tit common-intro">
                          【新品】TP401CA顽石360翻转变型本                </p>
                        <p class="index-goods-des common-intro">
                          360度自由翻转 / 机身薄约15.4mm                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4399</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2851.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/f55434391f4f7d98acbcafedf73d244d76db54a4.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2851.html">
                        <p class="index-goods-tit common-intro">
                          TP410UR顽石360翻转变型本                </p>
                        <p class="index-goods-des common-intro">
                          360度自由掌控 / 8小时长续航                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥6399</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2536.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/c7a18db8f2b82c7a71b5ff995aa3b0a96faa8916.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2536.html">
                        <p class="index-goods-tit common-intro">
                          ROG游骑兵双肩背包                </p>
                        <p class="index-goods-des common-intro">
                          适用17寸笔记本 / 可拆卸侧袋                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1088</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-587.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/b3fd32ec56ab53a887dd226a3634176396ed4dcf.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-587.html">
                        <p class="index-goods-tit common-intro">
                          手机配件-移动电源                </p>
                        <p class="index-goods-des common-intro">
                          10050mAh 大容量  /  轻约215g                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥129</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-790.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/cc4a02af6625a2f75678e68825278a0d93d2c597.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-790.html">
                        <p class="index-goods-tit common-intro">
                          手机配件-自拍杆                </p>
                        <p class="index-goods-des common-intro">
                          拉伸长达60cm  / Mini型轻约100g                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥59</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2699.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/a811b0c2fd34bec5c11d983df36d41734b7e4537.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2699.html">
                        <p class="index-goods-tit common-intro">
                          USB网络转接线                </p>
                        <p class="index-goods-des common-intro">
                          10/100 局域网插口  /  USB 2.0 插口                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥39</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1262.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/d51e9a8a8efc059d5e83462c10b7d7b3824ddeb7.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1262.html">
                        <p class="index-goods-tit common-intro">
                          三合一万用扩展坞                </p>
                        <p class="index-goods-des common-intro">
                          ABS强韧材质 / 1年本地保修                 </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥599</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1475.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/fe1bc70bcafbb4d641e5d9433836dd939b853f4e.png" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1475.html">
                        <p class="index-goods-tit common-intro">
                          ROG玩家国度电竞耳机                </p>
                        <p class="index-goods-des common-intro">
                          7.1声道环绕 / 指向性数字麦克风                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1799</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                </div>
              </li>
            </ul>
          </div>
        </div>
        <script>
          (function(){
            addEvent('domready',function(){
              var tab_body_item_len = $('module_270').getElements('.tab_head_item').length;
              if (tab_body_item_len<5) {
                $('module_270').getElements('.tab_head_item').setStyle('width',775/tab_body_item_len+'px')
              };
              $$('#module_270 .hs_tab_head li').addEvent('mouseover',function(){
                var index = $$('#module_270 .hs_tab_head li').indexOf(this)
                $(this).addClass('on').getSiblings('li').removeClass('on')
                $$('#module_270 .tab_body_item')[index].setStyle('display','block').getSiblings('.tab_body_item').setStyle('display','none')
              })
            });
            function newSwitchable (){
              new Switchable('module_slide_270',{
                haslrbtn:true,
                effect:'scrollx',
                panels:'.slide-item',
                triggers:'.trigger-item',
                autoplay:true
              });
            }
            newSwitchable();
          }());
        </script>                    </div>
      <div class="m_right_top">
        <div class="common-mod sales-charts">
          <div class="hd"><h2 class="title">本类销售榜</h2></div>
          <div class="bd">
            <ul class="goods-list clearfix">
              <li class="goods-item clearfix hot">
                <span class="num-1 goods-num">1</span>
                <div class="goods-pic">
                  <a href="/product-1151.html" target="_blank">
                    <img data-src="picture/a5aee6a3ef77364162dedc11da289afd3120bad1.jpg" alt="[ZenPad 3S 10] Z500M平板电脑" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1151.html" target="_blank">
                      ZenPad 3S 10 平板电脑            </a>
                  </h3>
                  <div class="goods-price"><i>￥2499</i></div>
                </div>
              </li>
              <li class="goods-item clearfix hot">
                <span class="num-2 goods-num">2</span>
                <div class="goods-pic">
                  <a href="/product-2253.html" target="_blank">
                    <img data-src="picture/34f1114e7f4265933ad957c8f5b471095619fa8c.jpg" alt="ZenFone3 灵智(ZE552KL)美拍手机" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2253.html" target="_blank">
                      灵智ZE552KL美拍手机            </a>
                  </h3>
                  <div class="goods-price"><i>￥2699</i></div>
                </div>
              </li>
              <li class="goods-item clearfix on">
                <span class="num-3 goods-num">3</span>
                <div class="goods-pic">
                  <a href="/product-1752.html" target="_blank">
                    <img data-src="picture/da505a9e356210e4783bb08b8c7b7519ff14fbcb.jpg" alt="华硕电神4长效续航智能手机" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1752.html" target="_blank">
                      电神4长效续航智能手机            </a>
                  </h3>
                  <div class="goods-price"><i>￥1399</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-4 goods-num">4</span>
                <div class="goods-pic">
                  <a href="/product-1411.html" target="_blank">
                    <img data-src="picture/91f6847f37b203c70753eba268e940cadb258e89.jpg" alt="华硕鹰眼3（ZE553KL）智能美拍长效续航手机" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1411.html" target="_blank">
                      鹰眼3智能美拍手机            </a>
                  </h3>
                  <div class="goods-price"><i>￥3699</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-5 goods-num">5</span>
                <div class="goods-pic">
                  <a href="/product-1122.html" target="_blank">
                    <img data-src="picture/0faaed109de5c1738d36bb895aa48be0b8630aab.jpg" alt="ZenFone3  傲视(ZU680KL)美拍长效续航手机" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1122.html" target="_blank">
                      傲视ZU680KL美拍手机            </a>
                  </h3>
                  <div class="goods-price"><i>￥3999</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-6 goods-num">6</span>
                <div class="goods-pic">
                  <a href="/product-2227.html" target="_blank">
                    <img data-src="picture/e69389760a2d8d25d570351253afa8936d033c4b.jpg" alt="飞马10S （Z301MF）平板电脑" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2227.html" target="_blank">
                      飞马10S平板电脑            </a>
                  </h3>
                  <div class="goods-price"><i>￥1699</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-7 goods-num">7</span>
                <div class="goods-pic">
                  <a href="/product-1613.html" target="_blank">
                    <img data-src="picture/4113343eae81847c68de63d96b0e1ac016299813.jpg" alt="华硕Zenfone飞马3S长效续航智能手机（ZC521TL）(3GB/64GB)" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1613.html" target="_blank">
                      飞马3S长效续航智能手机            </a>
                  </h3>
                  <div class="goods-price"><i>￥1999</i></div>
                </div>
              </li>
              <li class="goods-item clearfix last">
                <span class="num-8 goods-num">8</span>
                <div class="goods-pic">
                  <a href="/product-1827.html" target="_blank">
                    <img data-src="picture/0b3e7b4a56526366f6eceb4d06a542427b6955db.jpg" alt="华硕飞马4A美拍长效续航智能手机" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1827.html" target="_blank">
                      飞马4A 长效续航智能手机            </a>
                  </h3>
                  <div class="goods-price"><i>￥1599</i></div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="page">
    <div class="common_header">
      <h2><i class="line"></i>5F DIY外设专区</h2>
      <div class="more">
        <a href="http://store.asus.com.cn/gallery-91.html">更多<i class="iconfont icon-right"></i></a>
      </div>
    </div>            </div>

  <div class="page">
    <div class="product-module clearfix">
      <div class="m_top_header">

      </div>
      <div class="m_left_ad">
        <div class="banner">
          <a href="http://store.asus.com.cn/gallery-96.html" target="_blank">
            <img data-src="picture/88bfa7090094bf2496fa0374d55a51039c0e1a28.jpg" alt="新品显卡" width="244" height="630" />
          </a>
        </div>
      </div>
      <div class="m_middle_pro">
        <div id="module_271">
          <div class="hs_tab_head">
            <ul>
              <li class="tab_head_item  on">新品</li>
              <li class="tab_head_item ">主板</li>
              <li class="tab_head_item ">显卡</li>
              <li class="tab_head_item ">路由器</li>
              <li class="tab_head_item ">显示器</li>
            </ul>
          </div>
          <div class="hs_tab_body">
            <ul>
              <li class="tab_body_item" style="display:block;">
                <div class="module-slide" id="module_slide_271">
                  <ul class="slide-list switchable-content">
                    <li class="slide-item">
                      <a href="http://store.asus.com.cn/product-1880.html">
                        <img src="${pageContext.request.contextPath}/picture/4579b3cd845312ee72b9f574cd03789644178011.jpg" alt="RT-AC1200"/>
                      </a>
                    </li>
                  </ul>
                  <div class="flip prev over slide_btn"><a href="javascript:void(0)" class=""></a></div>
                  <div class="flip next slide_btn"><a href="javascript:void(0)" class=""></a></div>

                  <ul class="slide-triggers switchable-triggerBox" style="margin-left:-40px">
                    <li class="trigger-item"></li>

                  </ul>
                </div>
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2582.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/6483e7d664a27e48e1f32c88504c4c6b6851c280.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2582.html">
                        <p class="index-goods-tit common-intro">
                          电竞游戏系列-显卡                </p>
                        <p class="index-goods-des common-intro">
                          双风扇散热模式 / 145MHz动态超频                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1799</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1863.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/dbbf11dd7e20a9272867fcab1f654dc6347fd2b2.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1863.html">
                        <p class="index-goods-tit common-intro">
                          PRIME X370-PRO-主板                </p>
                        <p class="index-goods-des common-intro">
                          超频设计提速电竞 / 风冷水冷散热系统                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1079.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/ef69aeec3f6841d9ed78889888643c5d8ac4c432.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1079.html">
                        <p class="index-goods-tit common-intro">
                          窄边框显示器VZ229N                 </p>
                        <p class="index-goods-des common-intro">
                          滤蓝光护眼 / 薄约7mm                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥899</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2962.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/a5bb0513adb0be240a614c5f57537011e5ca852a.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2962.html">
                        <p class="index-goods-tit common-intro">
                          【新品】ROG CROSSHAIR VI HERO主板                </p>
                        <p class="index-goods-des common-intro">
                          兼容AM4/AM3散热平台 / 支持更高DDR4频率超频更稳定                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2502.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/cd36ba261fe22d9d8999091971eeb3b4a5270eab.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2502.html">
                        <p class="index-goods-tit common-intro">
                          【新品】ROG 玩家国度ROG STRIX Z370-E GAMING主板                </p>
                        <p class="index-goods-des common-intro">
                          华硕PRO Clock 超频技术 / 内存可达64GB                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2299</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2836.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/76f431b9ac6f035c9aa251e35766787c40d3f113.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2836.html">
                        <p class="index-goods-tit common-intro">
                          【新品】B350M-PLUS GAMING 游戏主板                </p>
                        <p class="index-goods-des common-intro">
                          可达64GB内存 / 自定义 RBG LED电竞灯效                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥699</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2739.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/5f3ad85067e410ce65ed7d283ad68b49474573cf.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2739.html">
                        <p class="index-goods-tit common-intro">
                          【新品】ROGSTRIX X299-XE GAMIN-游戏主板-主板                </p>
                        <p class="index-goods-des common-intro">
                          5重优化超频散热一键搞定 / RGB 信仰灯效                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥4499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2823.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/bfea6f7154acf498ecf9aaf7ac25c18eb3fe8b56.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2823.html">
                        <p class="index-goods-tit common-intro">
                          【新品】Z370-PLUS GAMING 游戏主板                </p>
                        <p class="index-goods-des common-intro">
                          板载双M.2散热片 / DST定制音效                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1499</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2416.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/44ad812ba7940b360191c91b7487b13823a82e38.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2416.html">
                        <p class="index-goods-tit common-intro">
                          【新品】A320M-A大师系列-主板                </p>
                        <p class="index-goods-des common-intro">
                          支持双通道DDR4内存 / 1年换新省事安心                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥599</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2574.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/ee518767a695b3790bf5a17831fe49adac00a531.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2574.html">
                        <p class="index-goods-tit common-intro">
                          【热销新品】地狱犬系列电竞-显卡                </p>
                        <p class="index-goods-des common-intro">
                          1746MHZ动态超频 / 翼型叶片散热模式                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2582.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/6483e7d664a27e48e1f32c88504c4c6b6851c280.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2582.html">
                        <p class="index-goods-tit common-intro">
                          电竞游戏系列-显卡                </p>
                        <p class="index-goods-des common-intro">
                          双风扇散热模式 / 145MHz动态超频                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1799</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1877.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/9cffe0538f75d9ed8037f5b4e499d1dc0b563769.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1877.html">
                        <p class="index-goods-tit common-intro">
                          ROG猛禽系列-显卡                </p>
                        <p class="index-goods-des common-intro">
                          1392MHz动态超频 / 热管直触双风扇设计                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1899</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1802.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/4653436033714bc8c1f49bb869d6da5915f79f8b.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1802.html">
                        <p class="index-goods-tit common-intro">
                          电竞游戏系列-显卡                </p>
                        <p class="index-goods-des common-intro">
                          1183 MHz超频模式 / 4GB显存                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1049</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1551.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/b06bc26ca6b3d0d7f74e2409b6e5d547b00ab034.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1551.html">
                        <p class="index-goods-tit common-intro">
                          DUAL-GTX1060游戏-显卡                </p>
                        <p class="index-goods-des common-intro">
                          6GB显存 / NVIDIA GTX1060 芯片                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3099</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1794.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/692dd1e24b7f44774a64d2d3760d2de0d3ef0b24.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1794.html">
                        <p class="index-goods-tit common-intro">
                          ROG玩家国度-显卡                </p>
                        <p class="index-goods-des common-intro">
                          GDDR5X 11GB显存 / 1632MHZ超频模式                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥9899</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2958.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/8c499b41d5e2d35614b49ca23f665be2121fb41e.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2958.html">
                        <p class="index-goods-tit common-intro">
                          lyra 天琴座 MAP-AC2200 路由器                </p>
                        <p class="index-goods-des common-intro">
                          三年质保 / 智慧网状分布式覆盖                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1922.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/7401c5cbb26fc89af172ca67c14c56cf68dfe1b7.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1922.html">
                        <p class="index-goods-tit common-intro">
                          RT-AC86U智能路由器                </p>
                        <p class="index-goods-des common-intro">
                          AC双频 / 2900M千兆低辐射                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1881.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/7d029844c80f4a809080b4b8190d63ff927992ae.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1881.html">
                        <p class="index-goods-tit common-intro">
                          RT-AC51U智能路由器                </p>
                        <p class="index-goods-des common-intro">
                          750M传输速度 / AC双频                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥159</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1880.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/76c454741806539a2f3596291df28038afd1073e.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1880.html">
                        <p class="index-goods-tit common-intro">
                          RT-AC1200智能路由器                </p>
                        <p class="index-goods-des common-intro">
                          千兆双频覆盖广 / 低辐射更安心                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥219</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2610.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/4ceeb234a7b9745d7f2dd4271b84ad00c6a5f4df.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2610.html">
                        <p class="index-goods-tit common-intro">
                          【新品】Blue Cave蓝洞居家路由器                </p>
                        <p class="index-goods-des common-intro">
                          2600M双频无线 / 双核1.6Ghz处理器                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1399</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-94.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/a1d52742ba706543a77f470b31c180b0884a1e98.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-94.html">
                        <p class="index-goods-tit common-intro">
                          RT-AC88U智能路由器                </p>
                        <p class="index-goods-des common-intro">
                          双频双千兆 / 4个外置 天线                 </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥1399</span>
                    </div>
                  </div>
                </div>
              </li>
              <li class="tab_body_item">
                <div class="hs-index-s1-goods-list clearfix">
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1709.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/c40ee0dbff831c0a29c3b4548f61bcdb49d6323c.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1709.html">
                        <p class="index-goods-tit common-intro">
                          MX34VQ曲面显示器                </p>
                        <p class="index-goods-des common-intro">
                          UWQHD高清 / 178度广视角                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥7999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1711.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/9440f3c8084fdf0972d638bc49040a4ce556dc87.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1711.html">
                        <p class="index-goods-tit common-intro">
                          PG258Q玩家国度游戏显示器                </p>
                        <p class="index-goods-des common-intro">
                          240Hz高刷新率畅快电竞 / 1ms响应                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥5999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2921.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/ed92088012d8e3d69e1b1b166332b617c6af0a88.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2921.html">
                        <p class="index-goods-tit common-intro">
                          【新品】 VS228DE主流家用显示器                </p>
                        <p class="index-goods-des common-intro">
                          支持壁挂 / 三年质保 / LED背光宽屏                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥679</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1080.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/46206c8531188b19b9af949a96ab24e077064a70.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1080.html">
                        <p class="index-goods-tit common-intro">
                          电竞显示器MG28UQ                 </p>
                        <p class="index-goods-des common-intro">
                          1ms快速响应 / GamePlus瞄准器                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥2899</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-1569.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/5fc3563944bf171d4c979d8c8fe6409374c23e0e.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-1569.html">
                        <p class="index-goods-tit common-intro">
                          电竞显示器ROG PG248Q                </p>
                        <p class="index-goods-des common-intro">
                          1ms快速响应 / 可达180Hz刷新率                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3999</span>
                    </div>
                  </div>
                  <div class="hs-index-s1-goods-item">
                    <div class="hs-index-s1-goods-pic">
                      <a href="/product-2437.html" target="_blank">
                        <img src="${pageContext.request.contextPath}/picture/633cfa4328d3817c7a3179d26be7767a52e71c57.jpg" alt="" />
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-info">
                      <a href="/product-2437.html">
                        <p class="index-goods-tit common-intro">
                          【新品】XG32VQ家用显示器                </p>
                        <p class="index-goods-des common-intro">
                          5ms急速响应 / 2560*1440分辨率                </p>
                      </a>
                    </div>
                    <div class="hs-index-s1-goods-price">
                      <span>￥3499</span>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <script>
          (function(){
            addEvent('domready',function(){
              var tab_body_item_len = $('module_271').getElements('.tab_head_item').length;
              if (tab_body_item_len<5) {
                $('module_271').getElements('.tab_head_item').setStyle('width',775/tab_body_item_len+'px')
              };
              $$('#module_271 .hs_tab_head li').addEvent('mouseover',function(){
                var index = $$('#module_271 .hs_tab_head li').indexOf(this)
                $(this).addClass('on').getSiblings('li').removeClass('on')
                $$('#module_271 .tab_body_item')[index].setStyle('display','block').getSiblings('.tab_body_item').setStyle('display','none')
              })
            });
            function newSwitchable (){
              new Switchable('module_slide_271',{
                haslrbtn:true,
                effect:'scrollx',
                panels:'.slide-item',
                triggers:'.trigger-item',
                autoplay:true
              });
            }
            newSwitchable();
          }());
        </script>                    </div>
      <div class="m_right_top">
        <div class="common-mod sales-charts">
          <div class="hd"><h2 class="title">本类销售榜</h2></div>
          <div class="bd">
            <ul class="goods-list clearfix">
              <li class="goods-item clearfix hot">
                <span class="num-1 goods-num">1</span>
                <div class="goods-pic">
                  <a href="/product-1880.html" target="_blank">
                    <img data-src="picture/56fdc005deb13962df41afb77f45954f8f43c5ff.jpg" alt="【官方翻新】华硕RT-AC1200 智能无线路由器 千兆双频 低辐射更环保更安心！" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1880.html" target="_blank">
                      RT-AC1200智能路由器            </a>
                  </h3>
                  <div class="goods-price"><i>￥219</i></div>
                </div>
              </li>
              <li class="goods-item clearfix hot">
                <span class="num-2 goods-num">2</span>
                <div class="goods-pic">
                  <a href="/product-2267.html" target="_blank">
                    <img data-src="picture/8a0fb181808ac51ac820ecc7f83146893c44ad36.jpg" alt="华硕（ASUS）VC239N-D （23 英寸/ IPS窄边框）高清显示器-黑色" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2267.html" target="_blank">
                      主流家用VC239N显示器-23寸            </a>
                  </h3>
                  <div class="goods-price"><i>￥999</i></div>
                </div>
              </li>
              <li class="goods-item clearfix on">
                <span class="num-3 goods-num">3</span>
                <div class="goods-pic">
                  <a href="/product-2311.html" target="_blank">
                    <img data-src="picture/a3b1c7ef824396631ad8e95001cbbac6d1b54244.jpg" alt="VZ249H-D  23.8英寸纤薄窄边框滤蓝光显示器" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2311.html" target="_blank">
                      VZ249H-D家用显示器            </a>
                  </h3>
                  <div class="goods-price"><i>￥1199</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-4 goods-num">4</span>
                <div class="goods-pic">
                  <a href="/product-2582.html" target="_blank">
                    <img data-src="picture/ea6df5af3624605739868707204c8ae8f0c37629.jpg" alt="DUAL-GFX1050TI-04G-V2 电竞游戏  显卡" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2582.html" target="_blank">
                      电竞游戏系列-显卡            </a>
                  </h3>
                  <div class="goods-price"><i>￥1799</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-5 goods-num">5</span>
                <div class="goods-pic">
                  <a href="/product-1555.html" target="_blank">
                    <img data-src="picture/336d332a83eb22c223776863d27ec8e732ced84a.jpg" alt="PH-GTX1050TI-4G  电竞游戏显卡" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-1555.html" target="_blank">
                      PH-GTX1050TI游戏-显卡            </a>
                  </h3>
                  <div class="goods-price"><i>￥1699</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-6 goods-num">6</span>
                <div class="goods-pic">
                  <a href="/product-2460.html" target="_blank">
                    <img data-src="picture/cd260d8e74a049b209991b9082842cff79137d0e.jpg" alt="PRIME Z370-A 主板" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2460.html" target="_blank">
                      【新品】PRIME Z370-A主板            </a>
                  </h3>
                  <div class="goods-price"><i>￥1799</i></div>
                </div>
              </li>
              <li class="goods-item clearfix">
                <span class="num-7 goods-num">7</span>
                <div class="goods-pic">
                  <a href="/product-2836.html" target="_blank">
                    <img data-src="picture/a30b550b30b58171da4efc753f6ec0edfcfdea57.jpg" alt="【新品上市】特种部队系列TUF B350M-PLUS GAMING 游戏主板" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2836.html" target="_blank">
                      【新品】B350M-PLUS GAMING 游戏主板            </a>
                  </h3>
                  <div class="goods-price"><i>￥699</i></div>
                </div>
              </li>
              <li class="goods-item clearfix last">
                <span class="num-8 goods-num">8</span>
                <div class="goods-pic">
                  <a href="/product-2773.html" target="_blank">
                    <img data-src="picture/66f0ae2b8f070c96d4ba0e5359afd9583583dcf6.jpg" alt="【新品上市】ROG玩家国度 ROG STRIX X399-E GAMING 游戏主板" data-img-zoom="true"/></a>
                </div>
                <div class="goods-info">
                  <h3 class="goods-name">
                    <a href="/product-2773.html" target="_blank">
                      【新品上市】 ROG STRIX X399-E GAMING 游戏主板            </a>
                  </h3>
                  <div class="goods-price"><i>￥4999</i></div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="page">
    <div class="common_header">
      <h2><i class="line"></i>键鼠/多媒体产品</h2>
      <div class="more">
        <a href="http://store.asus.com.cn/channel-109.html">更多<i class="iconfont icon-right"></i></a>
      </div>
    </div>

    <div class="hs-index-s2-product clearfix index_four_goods">

      <div class="hs-index-s2-ad hs-index-s4-ad fl">
        <div class="banner banner1">
          <a href="http://store.asus.com.cn/product-1931.html" target="_blank">
            <img src="${pageContext.request.contextPath}/picture/ade92214c368321b1f50f0a731ad08c7990e0911.jpg" alt="gk2000 RGB"  />
          </a>
        </div>
      </div>
      <div class="hs-index-s2-list hs-index-s4-list fr">
        <div class="hs-index-s2-goods-item">
          <div class="hs-index-s2-goods-pic">
            <a href="/product-188.html">
              <img src="${pageContext.request.contextPath}/picture/6e0501ee2815b175c44cfbd55763b6958948cf46.jpg" alt="华硕键鼠系列ROG GK2000 猎鹰键盘" data-img-zoom="true">
            </a>
          </div>
          <div class="hs-index-s2-goods-info">
            <a href="/product-188.html">
              <p class="index-goods-tit common-intro">
                GK2000 电竞游戏键盘                </p>
              <p class="index-goods-des common-intro">
                Cherry原厂机械红轴 / 阳极铝拉丝                </p>
            </a>
          </div>
          <div class="hs-index-s2-goods-price">
            <span>￥1299</span>
          </div>
        </div>
        <div class="hs-index-s2-goods-item">
          <div class="hs-index-s2-goods-pic">
            <a href="/product-2998.html">
              <img src="${pageContext.request.contextPath}/picture/6be837e44182a5c1f9b3843e11e672f6f1ca83b2.jpg" alt="ROG玩家国度ROG Gladius大G II 电竞竞技版鼠标" data-img-zoom="true">
            </a>
          </div>
          <div class="hs-index-s2-goods-info">
            <a href="/product-2998.html">
              <p class="index-goods-tit common-intro">
                【新品】ROG Gladius大G II鼠标                </p>
              <p class="index-goods-des common-intro">
                赠2个欧姆龙微动 / 12000dpi光学分辨率                </p>
            </a>
          </div>
          <div class="hs-index-s2-goods-price">
            <span>￥429</span>
          </div>
        </div>
        <div class="hs-index-s2-goods-item">
          <div class="hs-index-s2-goods-pic">
            <a href="/product-1511.html">
              <img src="${pageContext.request.contextPath}/picture/7a64947352238205a227a3951e5cc0ea29e55a04.jpg" alt="ROG玩家国度CLAYMORE分离式炫彩RGB游戏机械键盘" data-img-zoom="true">
            </a>
          </div>
          <div class="hs-index-s2-goods-info">
            <a href="/product-1511.html">
              <p class="index-goods-tit common-intro">
                ROG玩家国度游戏机械键盘                </p>
              <p class="index-goods-des common-intro">
                德国原厂CHERRY RGB轴 / 可拆分组合                </p>
            </a>
          </div>
          <div class="hs-index-s2-goods-price">
            <span>￥1599</span>
          </div>
        </div>
        <div class="hs-index-s2-goods-item last ">
          <div class="hs-index-s2-goods-pic">
            <a href="/product-1931.html">
              <img src="${pageContext.request.contextPath}/picture/ce74137e1bff509807310959a3636c49cad9bebb.jpg" alt="ROG Horus GK2000 RGB 机械电竞键盘" data-img-zoom="true">
            </a>
          </div>
          <div class="hs-index-s2-goods-info">
            <a href="/product-1931.html">
              <p class="index-goods-tit common-intro">
                GK2000 RGB 机械电竞键盘                </p>
              <p class="index-goods-des common-intro">
                黑色发丝纹铝合金材质 / 可调节键盘掌托                </p>
            </a>
          </div>
          <div class="hs-index-s2-goods-price">
            <span>￥1699</span>
          </div>
        </div>
      </div>
    </div>            </div>
  <div class="page">
    <div class="product-module">
      <div class="product-module-box clearfix">

      </div>
    </div>
  </div>

  <div class="page">

  </div>
</div>
<script type="text/javascript">
  (function(){
    var w=parseInt($$('.fast-entry .fast-item').getStyle('width')[0]);
    // $$('.fast-entry .fast-item i').setStyles({
    //     'height':w/2,
    //     'width':w/2
    // })
  })();

  // 左右切换商品
  function switchProduct(target,el,dir){
    var oUl=parseInt(el.getElements('ul').getStyle('width'));
    var oW=parseInt(el.getElements('li').getStyle('width')[0])+1;
    var oL=parseInt(el.getElements('ul').getStyle('left'))
    oUl=oUl-oW*(Math.round(1226/oW))
    if (oUl<=0) {
      return;
    };
    if (dir=='right') {
      if(oL){
        oL+=-oW*(Math.round(1226/oW))
      }else{
        oL=-oW*(Math.round(1226/oW))
      }
      if (oL<= -oUl) {
        oL= -oUl;
        target.getSiblings().removeClass('off')
        if (oL==-oUl) {
          target.addClass('off')
        };
      }else{
        target.getSiblings().removeClass('off')
      }
    };
    if (dir=='left') {
      oL+=oW*(Math.round(1226/oW))
      if (oL>=0) {
        oL=0;
        target.getSiblings().removeClass('off')
        if (oL==0) {
          target.addClass('off')
        };
      }else{
        target.getSiblings().removeClass('off')
      }
    };
    el.getElements('ul').setStyles({
      left:oL
    })
  }
  $$('.btngroup .iconfont').addEvent('click',function(e){
    var parent=$(this).getParent('.com_module')
    if ($(this).hasClass('icon-left')) {
      switchProduct(this,parent,'left')
    };
    if ($(this).hasClass('icon-right')) {
      switchProduct(this,parent,'right')
    };
  })
  // 排行
  $$('.sales-charts .goods-item').addEvent('mouseenter',function(){
    var goods_item=this.getParent('.sales-charts').getElements('.goods-item')
    var index=goods_item.indexOf(this);
    if (index>=2) {
      $(this).addClass('on').getSiblings().removeClass('on')
    };
  })
</script>
<div class="footer">
  <div class="service">
    <div class="page">
      <ul class="clearfix">
        <li class="qi">
          <i class="icon"></i>
          7天无理由退货
        </li>
        <li class="shiwu">
          <i class="icon"></i>
          15天免费换货
        </li>
        <li class="man">
          <i class="icon"></i>
          满69元包邮
        </li>
        <li class="yuyue">
          <i class="icon"></i>
          预约维修服务
        </li>
        <li class="last">
          <i class="icon"></i>
          支持支付宝&amp;花呗分期
        </li>
      </ul>
    </div>
  </div>
  <div class="helper">
    <div class="page clearfix">
      <div class="helper-item">
        <dl class="content-list">
          <dt class="content-title">
            <a class="link" href="http://store.asus.com.cn/article-gongsijieshao-l-56.html">公司介绍</a>
          </dt>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gongsijieshao-76.html" title=关于华硕>关于华硕</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gongsijieshao-77.html" title=华硕承诺>华硕承诺</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gongsijieshao-78.html" title=交易条款>交易条款</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gongsijieshao-79.html" title=特别提醒>特别提醒</a>
          </dd>
        </dl>
      </div>
      <div class="helper-item">
        <dl class="content-list">
          <dt class="content-title">
            <a class="link" href="http://store.asus.com.cn/article-gouwuzhinan-l-63.html">购物指南</a>
          </dt>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-80.html" title=订单说明>订单说明</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-81.html" title=会员注册>会员注册</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-82.html" title=会员账户安全与信息 >会员账户安全与信息 </a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-83.html" title=购物流程>购物流程</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-84.html" title=积分使用说明>积分使用说明</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-86.html" title=优惠券使用说明>优惠券使用说明</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-87.html" title=常见问题>常见问题</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-88.html" title=华硕商城服务协议说明 >华硕商城服务协议说明 </a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-gouwuzhinan-490.html" title=授权服务店服务说明>授权服务店服务说明</a>
          </dd>
        </dl>
      </div>
      <div class="helper-item">
        <dl class="content-list">
          <dt class="content-title">
            <a class="link" href="http://store.asus.com.cn/article-peisongyufukuan-l-73.html">配送与付款</a>
          </dt>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan_fahuoyuqianshouguifan-89.html" title=发货与签收规范>发货与签收规范</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan_peisongyunfeishuoming-90.html" title=配送运费说明>配送运费说明</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan-93.html" title=配送常见问题>配送常见问题</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan_peisongyichang-94.html" title=配送异常>配送异常</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan-95.html" title=付款咨询>付款咨询</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan-96.html" title=发票说明>发票说明</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan-97.html" title=发票常见问题>发票常见问题</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-peisongyufukuan-411.html" title=蚂蚁花呗常见问题>蚂蚁花呗常见问题</a>
          </dd>
        </dl>
      </div>
      <div class="helper-item">

      </div>
      <div class="helper-item">
        <dl class="content-list">
          <dt class="content-title">
            <a class="link" href="http://store.asus.com.cn/article-suwuyuzhichi-l-90.html">服务与支持</a>
          </dt>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-suwuyuzhichi-104.html" title=华硕服务中心查询>华硕服务中心查询</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-suwuyuzhichi-105.html" title=华硕授权实体门店查询>华硕授权实体门店查询</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-suwuyuzhichi-106.html" title=华硕智汇家>华硕智汇家</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-suwuyuzhichi-107.html" title=ZenCare>ZenCare</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-suwuyuzhichi-108.html" title=ZenTalk硕粉俱乐部>ZenTalk硕粉俱乐部</a>
          </dd>
          <dd class="node-index content-item">
            <a href="http://store.asus.com.cn/article-suwuyuzhichi-109.html" title=Giftbox >Giftbox </a>
          </dd>
        </dl>
      </div>
      <div class="helper-item">

      </div>
    </div>
  </div>
  <div class="footer-info">
    <div class="cart_mask"></div>
    <script>
      var Shop = window['Shop'] || {"url":{"region":"\/tools-selRegion.html","placeholder":"http:\/\/store.asus.com.cn\/public\/app\/b2c\/statics\/images\/imglazyload.gif"}};
      window.addEvent('domready',function(){
        var __time_out = 1000;
        if (Shop.set != undefined&&Shop.set.refer_timeout) __time_out = Shop.set.refer_timeout;
        var ReferObj ={};
        Object.append(ReferObj,{
          serverTime:1525750448,
          init:function(){
            var FIRST_REFER=Memory.get('FIRST_REFER');
            var NOW_REFER=Memory.get('NOW_REFER');
            var nowDate=this.time=this.serverTime*1000;
            if(!window.location.href.test('#r-')&&!document.referrer||document.referrer.test(document.domain))return;
            if(window.location.href.test('#r-')) Memory.clean('n');
            if(!FIRST_REFER){

              if(NOW_REFER){
                Memory.set('FIRST_REFER',NOW_REFER,this.getTimeOut(JSON.decode(NOW_REFER).DATE));
              }else{
                this.setRefer('FIRST_REFER',__time_out);
              }
            }
            this.setRefer('NOW_REFER',__time_out);
            this.createGUID();
          },
          getUid:function(){
            var lf=window.location.href,pos=lf.indexOf('#r-');
            return pos!=-1?lf.substr(pos+4):'';
          },
          getRefer:function(){
            return document.referrer?document.referrer:'';
          },
          setRefer:function(referName,timeout){
            var uid=this.getUid(),referrer=this.getRefer();
            var data={'ID':uid,'REFER':referrer,'DATE':this.time};

            if('NOW_REFER'==referName){
              var refer=JSON.decode(Memory.get('FIRST_REFER'));
              if(uid!=''&&refer&&refer.ID==''){
                var fdata={'ID':uid,'REFER':refer.REFER,'DATE':refer.DATE};
                Memory.set('FIRST_REFER',JSON.encode(fdata),this.getTimeOut(refer.DATE));
              }else if(uid==''){
                Object.append(data,{'ID':refer.ID});
              }
            }
            Memory.set(referName,JSON.encode(data),__time_out||15);
          },
          getTimeOut:function(nowDate){
            var timeout=nowDate+__time_out*24*3600*1000;
            var date=new Date(timeout);
            return date;
          },
          createGUID:function(){
            var GUID = (function(){
              var S4=function(){
                return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
              };
              return (S4()+S4()+"-"+S4()+"-"+S4()+"-"+S4()+"-"+S4()+S4()+S4()).toUpperCase();
            })();
            Memory.set('n',GUID,3650);
          }
        });
        ReferObj.init();
      });


      miniCart = {
        'show':function(target){
          target = $(target);
          if (!target) return;

          if(this.dialog){
            this.hide();
          }

          var options = {
            body: 'popup-body',
            header: 'popup-header',
            close: 'popup-btn-close',
            content:'popup-content',
            title:'正在加入购物车',
            main:'<div class="loading">loading...</div>'
          }, dialog = this.dialog = new Element('div#mini_cart_dialog.popup-container.mini-cart-dialog',{
            'html': $('popup_template').get('html').substitute(options),
            styles:{
              display:'block',
              zIndex: maxZindex('div', 1)
            }
          }).inject(document.body);

          this.title = dialog.getElement('.popup-header h2');
          this.close = dialog.getElements('.popup-btn-close');
          this.content = dialog.getElement('.popup-content');
          this.dialog.addEvent('click:relay(.popup-btn-close)',this.hide.bind(this));

          var setSize = this.setSize = function(){
            if(!dialog.isDisplayed()) return;
            dialog.setStyles({
              top:target.getPosition().y+target.getSize().y,
              left:target.getPosition().x.limit(0,window.getSize().x-dialog.getSize().x) + window.getScroll().x
            });
          };
          $$('.cart_mask').setStyle('display','block')
          // setSize();
          // window.addEvent('resize',setSize);
        },
        'hide':function(){
          $$('.cart_mask').setStyle('display','none')
          try{
            this.dialog.destroy();
            // window.removeEvent('resize',this.setSize);
          }catch(e){}
        },
        'load':function(options){
          options = options || {};
          options = Object.merge({
            method: 'post',
            onRequest: function(){
              miniCart.show(options.target);
            },
            onSuccess: function(re){
              if(re) {
                this.title.innerHTML = '';
                this.content.innerHTML = re;
              }

              updateCartInfo();

              if(document.getElement('.minicart_box')&&document.getElement('.minicart_box').get('show_gallery')){
                document.getElement('.minicart_box').fireEvent('_show'); //迷你购物车
              }
              options.callback && options.callback(re);
            }.bind(this),
            onFailure: function(xhr){
              this.title.innerHTML = '';
              this.content.innerHTML = '<div class="minicart-error"><p align="center">加入购物车失败<br />可能库存不足或提交信息不完整。</p></div>';
            }.bind(this)
          },options||{});
          if(!options.url) return false;

          new Request(options).send(options.data ? options.data.toQueryString() + '&mini_cart=true' : 'mini_cart=true');
        },
        init:function(target, url, data){
          var linktocart;
          if(typeOf(target) == 'element') linktocart = target.getElements('[target=_dialog_minicart]');
          else if(typeOf(target) == 'elements') linktocart = target;
          else linktocart = $$('a[target=_dialog_minicart], button[target=_dialog_minicart]');
          if(linktocart.length){
            linktocart.addEvent('click',function(e){
              e.preventDefault();
              miniCart.load({url: url || this.href, data: data || this.getParent('.goods-item') || this.getParent('li'), target: this});
            });
          }
        }
      };

      formToCart = function(container,target) {
        container = $(container || document.body);
        target = target || '.action-addtocart';
        if(!container) return;

        var formtocart = container.getElement('form[target=_dialog_minicart]') || container.getFirst().getParent('form[target=_dialog_minicart]');
        if(formtocart) {
          formtocart.addEvent('submit', function(e){
            e.stop();
            target = this.getElement(target) || this.getElement('*[type=submit]');
            miniCart.load({
              url:this.action,
              method:this.method,
              data:this,
              target: target,
              callback: function() {
                target.removeClass('disabled');
              }.bind(this)
            });
          });
        };
      }

      window.addEvent('domready',function(){
        miniCart.init();
        formToCart();
      });
    </script>

    <script id="popup_template" type="text/template">
      <div class="{body}">
        <div class="{header} clearfix">
          <h2>{title}</h2>
          <span><button type="button" title="关闭" class="{close}" hidefocus><i class="iconfont icon-fork"></i></button></span>
        </div>
        <div class="{content} clearfix">{main}</div>
      </div>
    </script>
    <script id="message_template" type="text/template">
      <div class="{body} clearfix">
        <div class="iconfont">{icon}</div>
        <div class="{content}">{main}</div>
      </div>
    </script>
    <script id="dropmenu_template" type="text/template">
      <div class="{body}">
        <div class="{content} clearfix">{main}</div>
      </div>
    </script>
    <!-- 百度跟踪代码 -->
    <script>
      // var _hmt = _hmt || [];
      // (function() {
      //     var hm = document.createElement("script");
      //     hm.src = "//hm.baidu.com/hm.js?3436fc5cdd1d340f1d6f61fb9f5217b9";
      //     var s = document.getElementsByTagName("script")[0];
      //     s.parentNode.insertBefore(hm, s);
      // })();
    </script><div class="theme-footer"> <p style="text-align: center;">&nbsp;</p>
    <p style="text-align: center;">有任何购物问题请联系商城客服 | 电话：400-091-9520</p>
    <p style="text-align: center;">公司名称：华硕电脑（上海）有限公司&nbsp;|&nbsp;电话：021-31270606</p>
    <p style="text-align: center;">地址：上海市闵行区金都路5077号</p>
    <p style="text-align: center;">沪ICP备11025349号-3&nbsp;│ ASUSTeK Computer Inc. All Rights Reserved.</p>
    <div style="width:300px;margin:0 auto; padding:20px 0;text-align: center;"><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011202002313">
      <img src="" style="text-align: center; float: left;" /></a><p style="text-align: center; display: inline-block; text-decoration: none; height: 20px; line-height: 20px; : left; margin: 0px 0px 0px 5px; color: rgb(147, 147, 147);">
      <img src="${pageContext.request.contextPath}/picture/735f16509d9a54d5ddade073f133e7dcf2c0a486.png"><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011202002313" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">沪公网安备 31011202002313号</a></p>
    </div> </div>    </div>

</div>
<div id="im_235" class="im clearfix" style="position:fixed;top:50%;margin-top:-100px;right:0;">
  <div id="im_bar_235" class="im-bar"><img src="${pageContext.request.contextPath}/picture/im.png"></div>
  <div id="im_main_235" class="im-main" style="display:none;">
    <h4>联系客服</h4>
    <div class="im_box">
      <div>
        <a href="http://care3.live800.com/live800/chatClient/chatbox.jsp?companyID=8122&configID=1772&skillId=493" target="_blank">
          <img src="${pageContext.request.contextPath}/picture/pre-sales.png">
        </a>
      </div>
      <div>
        <a href="http://care3.live800.com/live800/chatClient/chatbox.jsp?companyID=8122&configID=1771&skillId=494" target="_blank">
          <img src="${pageContext.request.contextPath}/picture/service.png">
        </a>
      </div>
      <div>
        <a href="https://icr-cn.asus.com/webchat/icr.html?rootTreeId=CN-CSC.CN.ZH-CN&treeId=CN-CSC.CN.ZH-CN&tenantId=ZH-CN&language=zh-cn&_ga=2.53656288.953516908.1502262870-1647542017.1443056529" target="_blank">
          <img src="${pageContext.request.contextPath}/picture/tecolo.png">
        </a>
      </div>
      <div style="border:none;" style="wx_erwema">
        <img src="${pageContext.request.contextPath}/picture/3b3b2afc0bdb40379cdf118309224acffce8a46e.png">
        <p class="wx">商城微信客服</p>
      </div>
    </div>

  </div>
</div>
<script>
  (function(){
    var lazy=new LazyLoad();
    var im = $('im_235');
    var imgBar=$('im_bar_235')
    var imMain = $('im_main_235');
    var timer;
    im.addEvents({
      'mouseenter':function(){
        clearTimeout(timer);
        imMain.setStyles({'display':'block','margin-top':'-80px'});
        imgBar.setStyle('display','none')
        lazy.loadCustomLazyData(imMain,'textarea');
        if ($$('.ad_pic_float')) {
          $$('.ad_pic_float').setStyle('display','none')
        };
      },
      'mouseleave':function(){
        timer = function(){
          imMain.setStyle('display','none');
          imgBar.setStyle('display','block')
          $$('.ad_pic_float').setStyle('display','block')
        }.delay(100);
      }
    });
    // setImTop();
    // function setImTop(){
    //     im.tween('top',$(document.body).getScroll().y+200);
    // }

    // window.addEvent('scroll',function(){
    //     setImTop();
    // })
  })();
</script>

<script>
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?3436fc5cdd1d340f1d6f61fb9f5217b9";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
  })();
</script>
<script>
  (function(){
    var help_item = $$('.helper-item');
    var show_num=0;
    var last_num=0;
    help_item.each(function(el,i){
      if (!el.getElement('.content-list')) {
        el.setStyle('display','none');
      }else{
        show_num++;
        last_num=i;
      }
    })
    help_item.setStyle('margin-right',(1226-show_num*204)/(show_num-1)+'px');
    help_item[last_num].setStyle('margin-right','0')
  })()
</script>    </body>
</html>
