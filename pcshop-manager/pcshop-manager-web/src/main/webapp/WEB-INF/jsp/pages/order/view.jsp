<%--
  User: Administrator
  Date: 2018/4/17
  Time: 11:04
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" />
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
    <title>编辑订单${order.oname}</title>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
</head>
<body>
<div class="weadmin-body">
    <form class="layui-form" method="post" enctype="multipart/form-data" action="">
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">--%>
                <%--<span class="we-red">*</span>商品类别--%>
            <%--</label>--%>
            <%--<div class="layui-input-inline" id="selectCid">--%>
                <%--<select  name="cid" id="select">--%>
                <%--</select>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="layui-form-item">
            <label for="oname" class="layui-form-label">
                <span class="we-red">*</span>订单名称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="oname" name="oname" value="${order.oname}"  autocomplete="off"
                       class="layui-input">
            </div>
        </div>
            <div class="layui-form-item">
                <label for="productname" class="layui-form-label">
                    <span class="we-red">*</span>订单商品
                </label>
                <div class="layui-input-inline">
                    <input type="text" value="${order.productname}" id="productname" name="productname"   autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="privce" class="layui-form-label">
                    <span class="we-red">*</span>订单时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" value="${order.otime}" id="otime" name="otime"   autocomplete="off"
                           class="layui-input">
                </div>
            </div>
        <div class="layui-form-item">
            <label for="privce" class="layui-form-label">
                <span class="we-red">*</span>订单价格
            </label>
            <div class="layui-input-inline">
                <input type="text" value="${order.privce}" id="privce" name="privce"   autocomplete="off"
                       class="layui-input">
            </div>
        </div>

       </form>
</div>
<div class="layui-form-item">
    <label for="oaddress" class="layui-form-label">
        <span class="we-red">*</span>地址
    </label>
    <div class="layui-input-inline">
        <input type="text" value="${order.oaddress}" id="oaddress" name="oaddress"   autocomplete="off"
               class="layui-input">
    </div>
    <div class="layui-form-item">
        <label for="username" class="layui-form-label">
            <span class="we-red">*</span>客户
        </label>
        <div class="layui-input-inline">
            <input type="text" value="${order.username}" id="username" name="username"   autocomplete="off"
                   class="layui-input">
        </div>
    </div>  <div class="layui-form-item">
    <label for="adminname" class="layui-form-label">
        <span class="we-red">*</span>管理员
    </label>
    <div class="layui-input-inline">
        <input type="text" value="${order.adminname}" id="adminname" name="adminname"   autocomplete="off"
               class="layui-input">
    </div>
</div>
</div>
<div class="layui-form-it<em">
    <button class="layui-btn" lay-filter="edit" lay-submit="">修改</button>

</div>


<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/orderlist.js" charset="utf-8"></script>


<script type="text/javascript">
    $(function(){
        alert(order);
        var oname="${order.oname}";
        var product="${order.productname}"
        var otime="${order.otime}"
        var privce="${order.privce}"
        var oaddress="${order.oaddress}"
        var username="${order.username}"
        var adminname="${order.adminname}"
     })
    layui.use(['form',  'jquery', 'table', 'layer'], function() {
        var form = layui.form,
            jquery = layui.jquery,
            table = layui.table,
            layer = layui.layer;

        //监听提交
        form.on('submit(edit)', function (data) {
            var order = data.field;
            //发异步，把数据提交给php
            $.ajax({
                url: "../editorder",
                data: {
                    "oid": order.oid,
                    "oname": order.oname,
                    "oaddress": order.oaddress,
                       }, success: function (data) {      //成功，回调函数
                    layer.msg("修改成功", {icon: 1}, function () {
                        // 获得frame索引
                        var index = parent.layer.getFrameIndex(window.name);
                        //关闭当前frame
                        parent.layer.close(index);
                    })
                }
            })
        });
    });

</script>
</body>
</html>

