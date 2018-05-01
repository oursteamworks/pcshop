<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台登录页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/layuis.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>


</head>
<body>
<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">

  <div class="layadmin-user-login-main">
    <div class="layadmin-user-login-box layadmin-user-login-header">
      <h2>EarlyBird</h2>
      <p>EarlyBird 团队出品的后台管理模板系统</p>

    </div>
    <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
      <form action="${pageContext.request.contextPath}/login" onsubmit="return checklogin()" method="post">
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
          <input type="text" name="aname" id="LAY-user-login-username" lay-verify="required" placeholder="用户名" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
          <input type="password" name="apwd" id="LAY-user-login-password" lay-verify="required" placeholder="密码" class="layui-input">
        </div>
        <div class="layui-form-item">
          <%--<button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 入</button>--%>
            <input class="layui-btn layui-btn-fluid" value="登录"  type="submit">
        </div>

        <div class="layui-trans layui-form-item layadmin-user-login-other">
        <label>社交账号登入</label>
        <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
        <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
        <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>

        </div>
      </form>
    </div>
  </div>

  <div class="layui-trans layadmin-user-login-footer">

    <p>© 2018 <a href="http://www.mobiletrain.org/" target="_blank">earlybird.com</a></p>

  </div>

</div>
<script type="text/javascript">
  function checklogin(){
      //alert($("#LAY-user-login-username").val());
      if($("#LAY-user-login-username").val()==null||$("#LAY-user-login-username").val()==""){

          //alert("用户名不能为空！！！");
          layer.msg("请输入用户名", {icon: 3})
          return false;
      }
      if($("#LAY-user-login-password").val()==null||$("#LAY-user-login-password").val()==""){

          //alert("密码为不能为空！！！");
          layer.msg("请输入密码", {icon: 3})
          return false;
      }
      return true;
  }
  layui.use(['jquery', 'table', 'layer'], function () {
    var $ = layui.jquery,
            table = layui.table,
            layer = layui.layer;

    var loginMsg = "${loginMsg}";
    if(loginMsg!=null&&loginMsg!=""){
        //  alert(loginMsg)
        layer.msg(loginMsg, {icon: 2});
    }
  });
</script>
</body>
</html>
