<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
  <meta charset="UTF-8" />
  <title>EarlyBird电脑商城</title>
  <meta name="viewport" content="width=1226" />
  <meta name="description" content="小米手机6的检索结果，小米官方网站包含小米手机6价格及小米手机6适配机型，官方推荐小米手机6产品，帮助米粉挑选合适自己的小米手机6商品。" />
  <meta name="keywords" content="小米手机6" />
  <meta name="robots" content="noindex"/>
  <link rel="shortcut icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
  <link rel="icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="css/base.min_1.css" />

  <link rel="stylesheet" href="css/list.min_1.css" />
  <script type="text/javascript">var _head_over_time = (new Date()).getTime();</script>
</head>
<body>
<div class="site-topbar">
  <div class="container">
    <div class="topbar-nav">
      <a href="//www.mi.com/index.html" >EarlyBird电脑商城</a><span class="sep">|</span><a href="https://www.miui.com/" target="_blank">MIUI</a><span class="sep">|</span><a href="https://iot.mi.com/index.html" >IoT</a><span class="sep">|</span><a href="https://i.mi.com/" target="_blank">云服务</a><span class="sep">|</span><a href="https://shuidi.mi.com/" target="_blank">水滴</a><span class="sep">|</span><a href="https://jr.mi.com?from=micom" target="_blank">金融</a><span class="sep">|</span><a href="https://youpin.mi.com/" target="_blank">有品</a><span class="sep">|</span><a href="#J_modal-globalSites" data-toggle="modal">Select Region</a>
    </div>
    <div class="topbar-cart" id="J_miniCartTrigger">
      <a class="cart-mini" id="J_miniCartBtn" href="//static.mi.com/cart/"><i class="iconfont">&#xe60c;</i>购物车<span class="cart-mini-num J_cartNum"></span></a>
      <div class="cart-menu" id="J_miniCartMenu">
        <div class="loading"><div class="loader"></div></div>
      </div>
    </div>
    <div class="topbar-info" id="J_userInfo">
      <a class="link" href="//order.mi.com/site/login" data-needlogin="true">登录</a><span class="sep">|</span><a class="link" href="https://account.xiaomi.com/pass/register" >注册</a>        </div>
  </div>
</div>
<div class="site-header">
  <div class="container">
    <div class="header-logo">
      <a class="logo ir" href="//www.mi.com/index.html" title="EarlyBird官网">EarlyBird官网</a>
    </div>
    <div class="header-nav">
      <ul class="nav-list J_navMainList clearfix">
        <li id="J_navCategory" class="nav-category">
          <a class="link-category" href="//list.mi.com"><span class="text">全部商品分类</span></a>
        </li>
        <li class="nav-item">
          <a class="link" href="javascript: void(0);"><span class="text">小米手机</span><span class="arrow"></span></a>
          <div class="item-children">
            <div class="container">
              <ul class="children-list clearfix">
                <li class="first">
                  <div class="figure figure-thumb">
                    <a href="https://www.mi.com/mix2s/"><img src="picture/placeholder-220!110x110_1.png" data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2s320-220white.png" srcset="//i1.mifile.cn/f/i/g/2015/cn-index/mix2s320-220white.png 2x" alt="小米MIX 2S" width="160" height="110" /></a>
                  </div>
                  <div class="title"><a href="https://www.mi.com/mix2s/">小米MIX 2S</a></div>
                  <p class="price">3299元起</p>                                    <div class="flags"><div class="flag">新品</div></div>                                </li>
              </ul>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
<div align="center">
  跳转：<input type="text" value="" id="currentPage" onblur="goC();">当前页：${page.pageNum }/${page.pages }
  <a href="${pageContext.request.contextPath }/portal/${servletMappingName }?currentPage=1&keyword=${keyword}">首页</a>
  <c:if test="${page.hasPreviousPage }">
    <a href="${pageContext.request.contextPath }/portal/${servletMappingName }?currentPage=${page.prePage}&keyword=${keyword}">上一页</a>
  </c:if>

  <c:forEach items="${page.navigatepageNums }" var="index">
    <c:choose>
      <c:when test="${page.pageNum==index }">
        <a style="color:red;" href="${pageContext.request.contextPath }/portal/${servletMappingName }?currentPage=${index}
        &keyword=${keyword}">第${index }页</a>
      </c:when>
      <c:otherwise>
        <a style="color:black;" href="${pageContext.request.contextPath }/portal/${servletMappingName }?currentPage=${index}
      &keyword=${keyword}">第${index }页</a>
      </c:otherwise>
    </c:choose>
  </c:forEach>
  <c:if test="${page.hasNextPage }">
    <a href="${pageContext.request.contextPath }/portal/${servletMappingName }?currentPage=${page.nextPage}
   &keyword=${keyword}">下一页</a>
  </c:if>
  <a href="${pageContext.request.contextPath }/portal/${servletMappingName }?currentPage=${page.pages}
  &keyword=${keyword}">尾页</a> &nbsp;
  总个数：${page.total }
</div>

<div class="container">
  <div class="filter-box">
    <div class="filter-list-wrap">
      <dl class="filter-list clearfix">
        <dt>分类：</dt>
        <dd class="active">全部</dd><dd ><a href="//search.mi.com/search_小米手机6-9">贴膜</a></dd><dd ><a href="//search.mi.com/search_小米手机6-8">保护套/保护壳</a></dd><dd ><a href="//search.mi.com/search_小米手机6-118">小米头戴式耳机</a></dd><dd ><a href="//search.mi.com/search_小米手机6-16">线材</a></dd><dd ><a href="//search.mi.com/search_小米手机6-128">小米蓝牙耳机</a></dd><dd ><a href="//search.mi.com/search_小米手机6-18">品牌耳机</a></dd><dd ><a href="//search.mi.com/search_小米手机6-182">降噪耳机</a></dd><dd ><a href="//search.mi.com/search_小米手机6-31">手机</a></dd>            </dl>
    </div>
    <div class="filter-list-wrap">
      <dl class="filter-list clearfix">
        <dt>品牌：</dt>
        <dd class="active">全部</dd><dd><a href="//search.mi.com/search_小米手机6-0-0-1">小米</a></dd><dd><a href="//search.mi.com/search_小米手机6-0-0-41">1MORE</a></dd>            </dl>
    </div>
  </div>
</div>
<div class="content">
  <div class="container">
    <div class="order-list-box clearfix">
      <ul class="order-list">
        <li class="active first"><a href="//search.mi.com/search_小米手机6-0-0-0-0-0-0-0-0-1" rel="nofollow">推荐</a></li>
        <li ><a href="//search.mi.com/search_小米手机6-0-0-0-0-1-0-0-0-1" rel="nofollow">新品</a></li>
        <li class="up"><a href="//search.mi.com/search_小米手机6-0-0-0-0-10-0-0-0-1" rel="nofollow">价格 <i class="iconfont">&#xe62f;</i></a></li>
        <li ><a href="//search.mi.com/search_小米手机6-0-0-0-0-3-0-0-0-1" rel="nofollow">评论最多</a></li>
      </ul>
      <ul class="type-list">
        <li><a href="//search.mi.com/search_小米手机6-0-0-0-0-0-0-0-1-1"><span class="checkbox"><i class="iconfont">&#x221a;</i></span>查看评价</a></li>
        <li><a href="//search.mi.com/search_小米手机6-0-0-0-0-0-0-1-0-1"  rel="nofollow"><span class="checkbox"><i class="iconfont">&#x221a;</i></span>仅显示特惠商品</a></li>
        <li><a href="//search.mi.com/search_小米手机6-0-0-0-0-0-1-0-0-1"  rel="nofollow"><span class="checkbox"><i class="iconfont">&#x221a;</i></span>仅显示有货商品</a></li>
      </ul>
    </div>
    <div class="goods-list-box">
      <div class="goods-list clearfix">
        <div class="goods-item" data-productid="6135">
          <div class="figure figure-img">
            <a href="//item.mi.com/1181600011.html?cfrom=search"><img src="picture/pms_1524042806.51873389!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//item.mi.com/1181600011.html?cfrom=search">小米蓝牙音频接收器</a></h2>
          <p class="price">99元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1181600011" data-config='{"cid":"1181600011","gid":"2181600010","discount":"0","price":"99\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1524042806.51873389!34x34_1.jpg" width="34" height="34" title="小米蓝牙音频接收器 浅白色" alt="小米蓝牙音频接收器 浅白色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1181600011" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2181600010" href="//cart.mi.com/cart/add/2181600010-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="7147">
          <div class="figure figure-img">
            <a href="//item.mi.com/1174200054.html?cfrom=search"><img src="picture/pms_1510019402.48089978!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//item.mi.com/1174200054.html?cfrom=search">小米6 全网通版 4GB内存</a></h2>
          <p class="price">2299元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1174200054" data-config='{"cid":"1174200054","gid":"2174200037","discount":"0","price":"2299\u5143","new":0,"is-cos":0,"package":0,"hasgift":1,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1510019402.48089978!34x34_1.jpg" width="34" height="34" title="小米6 全网通版 4GB内存 亮黑色" alt="小米6 全网通版 4GB内存 亮黑色" /></a></li><li data-commodityid="1174500005" data-config='{"cid":"1174500005","gid":"2174500008","discount":"0","price":"2299\u5143","new":0,"is-cos":0,"package":0,"hasgift":1,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1510033696.15216628!34x34_1.jpg" width="34" height="34" title="小米6 全网通版 4GB内存 亮蓝色" alt="小米6 全网通版 4GB内存 亮蓝色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1174200054" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2174200037" href="//cart.mi.com/cart/add/2174200037-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
            <div class="flag flag-gift">有赠品</div>                    </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="4863">
          <div class="figure figure-img">
            <a href="//item.mi.com/1164500008.html?cfrom=search"><img src="picture/pms_1478607293.23866401!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//item.mi.com/1164500008.html?cfrom=search">1MORE好声音入耳式耳机</a></h2>
          <p class="price">129元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1164500008" data-config='{"cid":"1164500008","gid":"2164500009","discount":"0","price":"129\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1478607293.23866401!34x34.jpg" width="34" height="34" title="1MORE好声音入耳式耳机 钛色" alt="1MORE好声音入耳式耳机 钛色" /></a></li><li data-commodityid="1173600044" data-config='{"cid":"1173600044","gid":"2173600010","discount":"0","price":"129\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1504840066.82385016!34x34_1.jpg" width="34" height="34" title="1MORE好声音入耳式耳机 金色" alt="1MORE好声音入耳式耳机 金色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1164500008" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2164500009" href="//cart.mi.com/cart/add/2164500009-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5677">
          <div class="figure figure-img">
            <a href="//www.mi.com/earphonetype-c/?cfrom=search"><img src="picture/pms_1492587660.55753313!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//www.mi.com/earphonetype-c/?cfrom=search">小米降噪耳机Type-C版</a></h2>
          <p class="price">299元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-config='{"cid":"1171600001","gid":"2171600001","discount":"0","price":"299\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}' ><a><img src="picture/pms_1492587660.55753313!34x34_1.jpg" width="34" height="34" alt="小米降噪耳机Type-C版 黑色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171600001" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2171600001" href="//cart.mi.com/cart/add/2171600001-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5828">
          <div class="figure figure-img">
            <a href="//item.mi.com/1171900017.html?cfrom=search"><img src="picture/pms_1496833357.9528722!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//item.mi.com/1171900017.html?cfrom=search">手机USB micro 数据线</a></h2>
          <p class="price">9.9元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1171900017" data-config='{"cid":"1171900017","gid":"2171900028","discount":"0","price":"9.9\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1496833357.9528722!34x34_1.jpg" width="34" height="34" title="手机USB micro 数据线 白色" alt="手机USB micro 数据线 白色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171900017" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2171900028" href="//cart.mi.com/cart/add/2171900028-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="4944">
          <div class="figure figure-img">
            <a href="//item.mi.com/1164700050.html?cfrom=search"><img src="picture/pms_1480066629.77799920!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//item.mi.com/1164700050.html?cfrom=search">小米二合一数据线100cm</a></h2>
          <p class="price">24.9元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1164700050" data-config='{"cid":"1164700050","gid":"2164700028","discount":"0","price":"24.9\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1480066629.77799920!34x34_1.jpg" width="34" height="34" title="小米二合一数据线100cm 白色" alt="小米二合一数据线100cm 白色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1164700050" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2164700028" href="//cart.mi.com/cart/add/2164700028-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5671">
          <div class="figure figure-img">
            <a href="//item.mi.com/1171500023.html?cfrom=search"><img src="picture/pms_1493284697.69911065!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc">适用于 小米手机6</p>                    <h2 class="title"><a href="//item.mi.com/1171500023.html?cfrom=search">小米6 标准高透贴膜</a></h2>
          <p class="price">10元 <del>19元</del></p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1171500023" data-config='{"cid":"1171500023","gid":"2171500024","discount":"6","price":"10\u5143 <del>19\u5143<\/del>","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493284697.69911065!34x34_1.jpg" width="34" height="34" title="小米6 标准高透贴膜 透明" alt="小米6 标准高透贴膜 透明" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171500023" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2171500024" href="//cart.mi.com/cart/add/2171500024-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
            <div class="flag flag-saleoff">6折促销</div>                    </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="4833">
          <div class="figure figure-img">
            <a href="//item.mi.com/1164400032.html?cfrom=search"><img src="picture/pms_1478070969.5786053!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//item.mi.com/1164400032.html?cfrom=search">小米二合一数据线30cm</a></h2>
          <p class="price">19.9元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1164400032" data-config='{"cid":"1164400032","gid":"2164400030","discount":"0","price":"19.9\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1478070969.5786053!34x34_1.jpg" width="34" height="34" title="小米二合一数据线30cm 白色" alt="小米二合一数据线30cm 白色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1164400032" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2164400030" href="//cart.mi.com/cart/add/2164400030-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5677">
          <div class="figure figure-img">
            <a href="//www.mi.com/earphonetype-c/?cfrom=search"><img src="picture/pms_1492587658.23552969!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//www.mi.com/earphonetype-c/?cfrom=search">小米降噪耳机Type-C版</a></h2>
          <p class="price">299元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-config='{"cid":"1171500033","gid":"2171500034","discount":"0","price":"299\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}' ><a><img src="picture/pms_1492587658.23552969!34x34.jpg" width="34" height="34" alt="小米降噪耳机Type-C版 白色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171500033" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2171500034" href="//cart.mi.com/cart/add/2171500034-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5023">
          <div class="figure figure-img">
            <a href="//www.mi.com/headphone/?cfrom=search"><img src="picture/pms_1481599827.1998390!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//www.mi.com/headphone/?cfrom=search">小米头戴式耳机</a></h2>
          <p class="price">499元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1165000002" data-config='{"cid":"1165000002","gid":"2165000001","discount":"0","price":"499\u5143","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1481599827.1998390!34x34_1.jpg" width="34" height="34" title="小米头戴式耳机 黑香槟金" alt="小米头戴式耳机 黑香槟金" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1165000002" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy J_buyGoods" data-gid="2165000001" href="//cart.mi.com/cart/add/2165000001-0-1"><span>加入购物车</span> <i class="iconfont">&#xe60a;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5670">
          <div class="figure figure-img">
            <a href="//item.mi.com/1171500020.html?cfrom=search"><img src="picture/pms_1493261826.22337469!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc">适用于 小米手机6</p>                    <h2 class="title"><a href="//item.mi.com/1171500020.html?cfrom=search">小米6 硅胶保护套</a></h2>
          <p class="price">39元 <del>49元</del></p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1171500021" data-config='{"cid":"1171500021","gid":"2171500022","discount":"8","price":"39\u5143 <del>49\u5143<\/del>","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493261828.23444007!34x34_1.jpg" width="34" height="34" title="小米6 硅胶保护套 白色" alt="小米6 硅胶保护套 白色" /></a></li><li data-commodityid="1171500020" data-config='{"cid":"1171500020","gid":"2171500021","discount":"8","price":"39\u5143 <del>49\u5143<\/del>","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493261826.22337469!34x34_1.jpg" width="34" height="34" title="小米6 硅胶保护套 红色" alt="小米6 硅胶保护套 红色" /></a></li><li data-commodityid="1171500022" data-config='{"cid":"1171500022","gid":"2171500023","discount":"8","price":"39\u5143 <del>49\u5143<\/del>","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493261830.47158342!34x34_1.jpg" width="34" height="34" title="小米6 硅胶保护套 蓝色" alt="小米6 硅胶保护套 蓝色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171500020" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy btn-buy-detail J_buyGoods" data-gid="2171500021" href="//order.mi.com/misc/subscribe/goods/2171500021"><span>到货提醒</span> <i class="iconfont">&#xe606;</i></a>                    </div>
          <div class="flags">
            <div class="flag flag-saleoff">8折促销</div>                    </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5672">
          <div class="figure figure-img">
            <a href="//item.mi.com/1171500024.html?cfrom=search"><img src="picture/pms_1493863398.71652587!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc">适用于 小米手机6</p>                    <h2 class="title"><a href="//item.mi.com/1171500024.html?cfrom=search">小米6 弧边高透膜</a></h2>
          <p class="price">19元 <del>29元</del></p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1171500024" data-config='{"cid":"1171500024","gid":"2171500025","discount":"7","price":"19\u5143 <del>29\u5143<\/del>","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493863398.71652587!34x34_1.jpg" width="34" height="34" title="小米6 弧边高透膜 黑色" alt="小米6 弧边高透膜 黑色" /></a></li><li data-commodityid="1171500025" data-config='{"cid":"1171500025","gid":"2171500026","discount":"7","price":"19\u5143 <del>29\u5143<\/del>","new":0,"is-cos":0,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493863431.78131872!34x34_1.jpg" width="34" height="34" title="小米6 弧边高透膜 白色" alt="小米6 弧边高透膜 白色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171500024" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy btn-buy-detail J_buyGoods" data-gid="2171500025" href="//order.mi.com/misc/subscribe/goods/2171500025"><span>到货提醒</span> <i class="iconfont">&#xe606;</i></a>                    </div>
          <div class="flags">
            <div class="flag flag-saleoff">7折促销</div>                    </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5669">
          <div class="figure figure-img">
            <a href="//item.mi.com/1171500018.html?cfrom=search"><img src="picture/pms_1493261514.03223754!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc">适用于 小米手机6</p>                    <h2 class="title"><a href="//item.mi.com/1171500018.html?cfrom=search">小米6 高透软胶保护套</a></h2>
          <p class="price">19元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1171500018" data-config='{"cid":"1171500018","gid":"2171500019","discount":"0","price":"19\u5143","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493261514.03223754!34x34_1.jpg" width="34" height="34" title="小米6 高透软胶保护套 透明" alt="小米6 高透软胶保护套 透明" /></a></li><li data-commodityid="1171500019" data-config='{"cid":"1171500019","gid":"2171500020","discount":"0","price":"19\u5143","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1493261516.81151778!34x34_1.jpg" width="34" height="34" title="小米6 高透软胶保护套 半透黑" alt="小米6 高透软胶保护套 半透黑" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171500018" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy btn-buy-detail J_buyGoods" data-gid="2171500019" href="//order.mi.com/misc/subscribe/goods/2171500019"><span>到货提醒</span> <i class="iconfont">&#xe606;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="6014">
          <div class="figure figure-img">
            <a href="//item.mi.com/1172300016.html?cfrom=search"><img src="picture/pms_1498547317.49155359!200x200_1.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc">适用于 小米手机6</p>                    <h2 class="title"><a href="//item.mi.com/1172300016.html?cfrom=search">小米6 超薄皮质保护套</a></h2>
          <p class="price">39元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1172300016" data-config='{"cid":"1172300016","gid":"2172300008","discount":"0","price":"39\u5143","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1498547317.49155359!34x34_1.jpg" width="34" height="34" title="小米6 超薄皮质保护套 黑色" alt="小米6 超薄皮质保护套 黑色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1172300016" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy btn-buy-detail J_buyGoods" data-gid="2172300008" href="//order.mi.com/misc/subscribe/goods/2172300008"><span>到货提醒</span> <i class="iconfont">&#xe606;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
        <div class="goods-item" data-productid="5721">
          <div class="figure figure-img">
            <a href="//item.mi.com/1171700002.html?cfrom=search"><img src="picture/pms_1498558137.1086965!200x200.jpg" width="200" height="200" alt="" /></a>
          </div>
          <p class="desc"></p>                    <h2 class="title"><a href="//item.mi.com/1171700002.html?cfrom=search">小米6 移动4G+版</a></h2>
          <p class="price">2899元</p>
          <div class="thumbs">
            <ul class="thumb-list">
              <li data-commodityid="1171700002" data-config='{"cid":"1171700002","gid":"2171700002","discount":"0","price":"2899\u5143","new":0,"is-cos":1,"package":0,"hasgift":0,"postfree":0,"postfreenum":1,"cfrom":"search"}'><a><img src="picture/pms_1498558137.1086965!34x34_1.jpg" width="34" height="34" title="小米6 移动4G+版 亮黑色" alt="小米6 移动4G+版 亮黑色" /></a></li>                        </ul>
          </div>
          <div class="actions clearfix">
            <a class="btn-like J_likeGoods" data-cid="1171700002" href="javascript: void(0);"><i class="iconfont">&#xe62d;</i> <span>喜欢</span></a>
            <a class="btn-buy btn-buy-detail J_buyGoods" data-gid="2171700002" href="//order.mi.com/misc/subscribe/goods/2171700002"><span>到货提醒</span> <i class="iconfont">&#xe606;</i></a>                    </div>
          <div class="flags">
          </div>
          <div class="notice"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="content">
  <div id="J_renovateWrap" class="xm-recommend-container"></div>
</div>
<div class="site-footer">
  <div class="container">
    <div class="footer-service">
      <ul class="list-service clearfix">
        <li><a rel="nofollow" href="//www.mi.com/static/fast/" target="_blank"><i class="iconfont">&#xe634;</i>预约维修服务</a></li>
        <li><a rel="nofollow" href="//www.mi.com/service/exchange#back" target="_blank"><i class="iconfont">&#xe635;</i>7天无理由退货</a></li>
        <li><a rel="nofollow" href="//www.mi.com/service/exchange#back" target="_blank"><i class="iconfont">&#xe636;</i>15天免费换货</a></li>
        <li><a rel="nofollow" href="//www.mi.com/service/buy/postage/" target="_blank"><i class="iconfont">&#xe638;</i>满150元包邮</a></li>
        <li><a rel="nofollow" href="//www.mi.com/static/maintainlocation/" target="_blank"><i class="iconfont">&#xe637;</i>520余家售后网点</a></li>
      </ul>
    </div>
    <div class="footer-links clearfix">

      <dl class="col-links col-links-first">
        <dt>帮助中心</dt>

        <dd><a rel="nofollow" href="//www.mi.com/service/account/register/"   target="_blank">账户管理</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/service/buy/buytime/"   target="_blank">购物指南</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/service/order/sendprogress/"   target="_blank">订单操作</a></dd>

      </dl>

      <dl class="col-links ">
        <dt>服务支持</dt>

        <dd><a rel="nofollow" href="//www.mi.com/service/exchange"   target="_blank">售后政策</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/service/"   target="_blank">自助服务</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/c/service/download/"   target="_blank">相关下载</a></dd>

      </dl>

      <dl class="col-links ">
        <dt>线下门店</dt>

        <dd><a rel="nofollow" href="//www.mi.com/c/xiaomizhijia/"   target="_blank">小米之家</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/static/maintainlocation/"   target="_blank">服务网点</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/static/familyLocation/"   target="_blank">授权体验店</a></dd>

      </dl>

      <dl class="col-links ">
        <dt>关于小米</dt>

        <dd><a rel="nofollow" href="//www.mi.com/about/"   target="_blank">了解小米</a></dd>

        <dd><a rel="nofollow" href="http://hr.xiaomi.com/"   target="_blank">加入小米</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/ir/"   target="_blank">投资者关系</a></dd>

      </dl>

      <dl class="col-links ">
        <dt>关注我们</dt>

        <dd><a rel="nofollow" href="https://weibo.com/xiaomishangcheng"   target="_blank">新浪微博</a></dd>

        <dd><a rel="nofollow" href="#J_modalWeixin" data-toggle="modal" >官方微信</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/about/contact/"   target="_blank">联系我们</a></dd>

      </dl>

      <dl class="col-links ">
        <dt>特色服务</dt>

        <dd><a rel="nofollow" href="//order.mi.com/queue/f2code"   target="_blank">F 码通道</a></dd>

        <dd><a rel="nofollow" href="//www.mi.com/giftcode/"   target="_blank">礼物码</a></dd>

        <dd><a rel="nofollow" href="//order.mi.com/misc/checkitem"   target="_blank">防伪查询</a></dd>

      </dl>

      <div class="col-contact">
        <p class="phone">400-100-5678</p>
        <p>
          周一至周日 8:00-18:00<br>（仅收市话费）
        </p>
        <a rel="nofollow" class="btn btn-line-primary btn-small" href="//www.mi.com/service/contact/" target="_blank"><i class="iconfont">&#xe600;</i> 联系客服</a>            </div>
    </div>
  </div>
</div>
<div class="site-info">
  <div class="container">
    <div class="logo ir">小米官网</div>
    <div class="info-text">
      <p class="sites"><a href="//www.mi.com/index.html"   target="_blank">小米商城</a><span class="sep">|</span><a href="https://www.miui.com/"   target="_blank">MIUI</a><span class="sep">|</span><a href="https://home.mi.com/index.html"   target="_blank">米家</a><span class="sep">|</span><a href="http://www.miliao.com/"   target="_blank">米聊</a><span class="sep">|</span><a href="https://www.duokan.com/"   target="_blank">多看</a><span class="sep">|</span><a href="http://game.xiaomi.com/"   target="_blank">游戏</a><span class="sep">|</span><a href="http://web.music.xiaomi.com/"   target="_blank">音乐</a><span class="sep">|</span><a href="http://www.miwifi.com/"   target="_blank">路由器</a><span class="sep">|</span><a href="//www.mi.com/micard/"   target="_blank">米粉卡</a><span class="sep">|</span><a href="https://xiaomi.tmall.com/"   target="_blank">小米天猫店</a><span class="sep">|</span><a href="https://www.miui.com/res/doc/privacy/cn.html"   target="_blank">隐私政策</a><span class="sep">|</span><a href="https://static.mi.com/feedback/"   target="_blank">问题反馈</a><span class="sep">|</span><a href="#J_modal-globalSites"   target="_blank">Select Region</a>            </p>
      <p>&copy;<a href="//www.mi.com/" target="_blank" title="mi.com">mi.com</a> 京ICP证110507号 <a href="http://www.miitbeian.gov.cn/"  target="_blank" rel="nofollow">京ICP备10046444号</a> <a rel="nofollow"  href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134" target="_blank">京公网安备11010802020134号 </a><a rel="nofollow"  href="//c1.mifile.cn/f/i/2013/cn/jingwangwen.jpg" target="_blank" rel="nofollow">京网文[2014]0059-0009号</a>

        <br> 违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
    </div>
    <div class="info-links">
      <a href="//privacy.truste.com/privacy-seal/validation?rid=4fc28a8c-6822-4980-9c4b-9fdc69b94eb8&lang=zh-cn" target="_blank"><img src="picture/truste_1.png" alt="TRUSTe Privacy Certification" /></a>
      <a href="//search.szfw.org/cert/l/CX20120926001783002010" target="_blank"><img src="picture/v-logo-2_1.png" alt="诚信网站" /></a>
      <a href="https://ss.knet.cn/verifyseal.dll?sn=e12033011010015771301369&ct=df&pa=461082" target="_blank"><img src="picture/v-logo-1_1.png" alt="可信网站" /></a>
      <a href="http://www.315online.com.cn/member/315140007.html" target="_blank"><img src="picture/v-logo-3_1.png" alt="网上交易保障中心" /></a>
      <a href="https://www.mi.com/service/buy/commitment/" target="_blank"><img src="picture/ba10428a4f9495ac310fd0b5e0cf8370_1.png" alt="诚信经营 放心消费" /></a>
    </div>
  </div>
  <div class="slogan ir">探索黑科技，小米为发烧而生</div>
</div>
<div id="J_modalWeixin" class="modal fade modal-hide modal-weixin" data-width="480" data-height="520">
  <div class="modal-hd">
    <a class="close" data-dismiss="modal"><i class="iconfont">&#xe602;</i></a>
    <span class="title">小米手机官方微信二维码</span>
  </div>
  <div class="modal-bd">
    <img alt="" src="picture/weixin_1.jpg" width="680" height="340" />
  </div>
</div>
<!-- .modal-weixin END -->
<div class="modal modal-hide modal-bigtap-queue" id="J_bigtapQueue">
  <div class="modal-body">
    <span class="close" data-dismiss="modal" aria-hidden="true">退出排队</span>
    <div class="con">
      <div class="title">正在排队，请稍候喔！</div>
      <div class="queue-tip-box">
        <p class="queue-tip">当前人数较多，请您耐心等待，排队期间请不要关闭页面。</p>
        <p class="queue-tip">时常来官网看看，最新产品和活动信息都会在这里发布。</p>
        <p class="queue-tip">下载小米商城 App 玩玩吧！产品开售信息抢先知道。</p>
        <p class="queue-tip">发现了让你眼前一亮的小米产品，别忘了分享给朋友！</p>
        <p class="queue-tip">产品开售前会有预售信息，关注官网首页就不会错过。</p>
      </div>
    </div>

    <div class="queue-posters">
      <div class="poster poster-3"></div>
      <div class="poster poster-2"></div>
      <div class="poster poster-1"></div>
      <div class="poster poster-4"></div>
      <div class="poster poster-5"></div>
    </div>
  </div>
</div>
<!-- .xm-dm-queue END -->
<div id="J_bigtapError" class="modal modal-hide modal-bigtap-error">
  <span class="close" data-dismiss="modal" aria-hidden="true"><i class="iconfont">&#xe602;</i></span>
  <div class="modal-body">
    <h3>抱歉，网络拥堵无法连接服务器</h3>
    <p  class="error-tip">由于访问人数太多导致服务器压力山大，请您稍后再重试。</p>
    <p >
      <a class="btn btn-primary" id="J_bigtapRetry">重试</a>
    </p>
  </div>
</div>


<div id="J_bigtapModeBox" class="modal fade modal-hide modal-bigtap-mode">
  <span class="close" data-dismiss="modal" ><i class="iconfont">&#xe602;</i></span>
  <div class="modal-body">
    <h3 class="title">为防黄牛，请您输入下面的验证码</h3>
    <p class="desc">在防黄牛的路上，我们一直在努力，也知道做的还不够。<br>
      所以，这次劳烦您多输一次验证码，我们一起防黄牛。</p>
    <div class="mode-loading" id="J_bigtapModeLoading">
      <img src="picture/loading_1.gif" alt="" width="32" height="32">
      <a  id="J_bigtapModeReload" class="reload  hide" href="javascript:void(0);">网络错误，点击重新获取验证码！</a>
    </div>
    <div class="mode-action hide" id="J_bigtapModeAction">
      <div class="mode-con" id="J_bigtapModeContent"></div>
      <input type="text" name="bigtapmode" class="input-text" id="J_bigtapModeInput" placeholder="请输入正确的验证码">
      <p class="tip" id="J_bigtapModeTip"></p>
      <a class="btn  btn-gray" id="J_bigtapModeSubmit">确认</a>
    </div>
  </div>
</div>
<!-- .xm-dm-error END -->
<div id="J_modal-globalSites" class="modal fade modal-hide modal-globalSites" data-width="640">
  <div class="modal-hd">
    <a class="close" data-dismiss="modal"><i class="iconfont">&#xe602;</i></a>
    <span class="title">Select Region</span>
  </div>
  <div class="modal-bd">
    <h3>Welcome to Mi.com</h3>
    <p class="modal-globalSites-tips">Please select your country or region</p>
    <p class="modal-globalSites-links clearfix">
      <a href="//www.mi.com/index.html">Mainland China</a>
      <a href="http://www.mi.com/hk/">Hong Kong</a>
      <a href="http://www.mi.com/tw/">Taiwan</a>
      <a href="http://www.mi.com/sg/">Singapore</a>
      <a href="http://www.mi.com/my/">Malaysia</a>
      <a href="http://www.mi.com/ph/">Philippines</a>
      <a href="http://www.mi.com/in/">India</a>
      <a href="http://www.mi.com/id/">Indonesia</a>
      <a href="http://www.mi.com/en/">Global Home</a>
      <a href="http://www.mi.com/mena/">MENA</a>
      <a href="http://www.mi.com/pl/">Poland</a>
      <a href="http://www.mi.com/ua/">Ukraine</a>
      <a href="http://www.mi.com/ru/">Russia</a>
      <a href="http://www.mi.com/vn/">Vietnam</a>
      <a href="http://www.mi.com/mx/">Mexico</a>
      <a href="http://www.mi.com/kr/">Korea</a>
      <a href="http://www.mi.com/eg/">Egypt</a>
      <a href="http://www.mi.com/th/">Thailand</a>
      <a href="http://www.mi.com/es/">Spain</a>
      <a href="http://www.mi.com/us/">United States</a>
      <a href="http://www.mi.com/it/">Italy</a>
    </p>
  </div>
</div>
<!-- .modal-globalSites END -->
<script src="js/base.min_1.js"></script>
<script>
  (function() {
    MI.namespace('GLOBAL_CONFIG');
    MI.GLOBAL_CONFIG = {
      orderSite: '//order.mi.com',
      wwwSite: '//www.mi.com',
      cartSite: '//cart.mi.com',
      itemSite: '//item.mi.com',
      assetsSite: '//s01.mifile.cn',
      listSite: '//list.mi.com',
      searchSite: '//search.mi.com',
      mySite: '//my.mi.com',
      damiaoSite: '//tp.hd.mi.com/',
      damiaoGoodsId: [],
      logoutUrl: '//order.mi.com/site/logout',
      staticSite: '//static.mi.com',
      quickLoginUrl: 'https://account.xiaomi.com/pass/static/login.html'
    };
    MI.setLoginInfo.orderUrl = MI.GLOBAL_CONFIG.orderSite + '/user/order';
    MI.setLoginInfo.logoutUrl = MI.GLOBAL_CONFIG.logoutUrl;
    MI.setLoginInfo.init(MI.GLOBAL_CONFIG);
    MI.miniCart.init();
    MI.updateMiniCart();
  })();
</script>


<script>
  var SITE_ID = "Search";
  var SEARCH_WORDS = "小米手机6";
  var HongBaoHost = "//i.huodong.mi.com";
</script>
<script src="js/goodslist.min_1.js"></script>
<script>
  var _msq = _msq || [];
  _msq.push(['setDomainId', 100]);
  _msq.push(['trackPageView']);
  (function() {
    var ms = document.createElement('script');
    ms.type = 'text/javascript';
    ms.async = true;
    ms.src = '//s1.mi.com/stat/18/xmst.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ms, s);
  })();
</script>
</body>
</html>
