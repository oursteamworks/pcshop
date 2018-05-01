<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <title>EarlyBird后台管理平台</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin.css"/>
</head>
<body>
<!-- 布局容器 -->
<div class="layui-layout layui-layout-admin">
  <!-- 头部 -->
  <div class="layui-header">
    <div class="layui-main">
      <div class="top-left">
        <!-- logo -->
        <a href="javascript:;" class="logo">EarlyBird后台管理平台</a>
        <a href="javascript:;" class="menu-flexible ml10">
          <i class="layui-icon">&#xe635;</i>
        </a>
      </div>
      <!-- 头部右侧操作 -->
      <ul class="layui-nav operate">
        <li class="layui-nav-item">
          <!-- 进入商城首页    -->
          <a href="javascript:;" data-url="${pageContext.request.contextPath}/indexmain">商品首页</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">${admin.aname}</a>
          <dl class="layui-nav-child">
            <dd>
              <a href="javascript:;" class="edit-password">修改密码</a>
            </dd>
            <dd>
              <a href="login.jsp">退出登录</a>
            </dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>

  <!-- 左侧菜单 -->
  <div class="layui-side layui-bg-black left-menu-all ">
    <div class="layui-side-scroll">
      <ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
        <li class="layui-nav-item layui-this">
          <a href="javascript:;" data-url="${pageContext.request.contextPath}/indexmain" data-id="1">后台首页</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">商品管理</a>
          <dl class="layui-nav-child">
            <dd>
              <a href="javascript:;" data-url="./manager/jsp/listProduct" data-id="2">商品列表</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="平台商品.html" data-id="3">上架商品</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="./manager/jsp/listProduct" data-id="4">库存管理</a>
            </dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">订单管理</a>
          <dl class="layui-nav-child">
            <dd>
              <a href="javascript:;" data-url="待发货.html" data-id="5">待发货</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="订单列表.html" data-id="6">订单列表</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="退货订单.html" data-id="7">退货订单</a>
            </dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">用户管理</a>
          <dl class="layui-nav-child">
            <dd>
              <a href="javascript:;" data-url="${pageContext.request.contextPath}/pages/user/edit" data-id="8">修改信息</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="${pageContext.request.contextPath}/pages/user/users" data-id="9">会员列表</a>
            </dd>
            <%--<dd>
              <a href="javascript:;" data-url="首页轮播图.html" data-id="10">编辑会员</a>
            </dd>--%>
            <dd>
              <a href="javascript:;" data-url="首页轮播图.html" data-id="11">生日祝福</a>
            </dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">分类管理</a>
          <dl class="layui-nav-child">
            <dd>
              <a href="javascript:;" data-url="运营管理账号.html" data-id="12">增加分类</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="会员账号.html" data-id="13">删除分类</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="第三方账号.html" data-id="14">查询分类</a>
            </dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">数据分析</a>
          <dl class="layui-nav-child">
            <dd>
              <a href="javascript:;" data-url="财务统计.html" data-id="15">利润分析</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="提现管理.html" data-id="16">用户喜好</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="分类统计.html" data-id="17">热销品</a>
            </dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">系统设置</a>
          <dl class="layui-nav-child">
            <dd>
              <a href="javascript:;" data-url="操作日志.html" data-id="18">操作日志</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="商品类型管理.html" data-id="19">商品类型管理</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="商品属性管理.html" data-id="20">商品属性管理</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="品牌管理.html" data-id="21">品牌管理</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="导航设计.html" data-id="22">导航设计</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="系统参数设置.html" data-id="23">系统参数设置</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="修改绑定手机.html" data-id="24">修改绑定手机</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="退货地址管理.html" data-id="25">退货地址管理</a>
            </dd>
            <dd>
              <a href="javascript:;" data-url="服务协议.html" data-id="26">服务协议</a>
            </dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>

  <!-- 主体 -->
  <div class="layui-body">
    <!-- 顶部切换卡 -->
    <div class="layui-tab layui-tab-card" lay-filter="top-tab" lay-allowClose="true">
      <ul class="layui-tab-title"></ul>
      <div class="layui-tab-button">
        <a href="javascript:;"><i class="layui-icon">&#x1002;</i></a>
      </div>
      <div class="layui-tab-content"></div>
    </div>
  </div>

  <!-- 底部 -->
  <div class="layui-footer">
    © eb.pcshop.com
  </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/admin.js"></script>
<script>
  layui.use(['jquery','form','layer'], function(){
    var $ = layui.jquery,
            layer = layui.layer,
            laypage = layui.laypage;

    // 修改密码
    $(document).on("click", ".edit-password", function() {
      layer.open({
        type:2
        ,area:['450px', '320px']
        ,title:"修改密码"
        ,content: '修改密码.html'
      });
    });
  });
</script>


</body>
</html>
