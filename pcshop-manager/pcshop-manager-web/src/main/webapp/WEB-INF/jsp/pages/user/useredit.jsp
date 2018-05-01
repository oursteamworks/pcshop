<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加管理员-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%--<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/favicon.ico" type="image/x-icon" />--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>用户名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="uname" name="uname" value="${user.uname}" lay-verify="required"
                                                                     autocomplete="off" class="layui-input">
                <input type="hidden" name="uid" value="${user.uid}">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>用户的注册用户名
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span class="we-red">*</span>性别</label>
            <div class="layui-input-block">
                <input type="radio" disabled name="sex" lay-skin="primary" value="男" title="男" ${user.sex=="男"?'checked':''}>
                <input type="radio" disabled name="sex" lay-skin="primary" value="女" title="女" ${user.sex=="女"?'checked':''}>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span class="we-red">*</span>年龄</label>
            <div class="layui-input-inline">
                <input type="text" id="age" name="age" value="${user.age}" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>生日
            </label>
            <div class="layui-input-inline">
                <%--<input type="text" id="birthday" name="birthday" value="${user.birthday}" readonly="true" lay-verify="required"--%>
                       <%--autocomplete="off" class="layui-input">--%>
                <input type="text"  name="birthday" placeholder="yyyy-MM-dd" required="" value="${user.birthday}" class="layui-input"  lay-verify="required" id="birthday">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>电话
            </label>
            <div class="layui-input-inline">
                <input type="text" id="tellphone" name="tellphone" value="${user.tellphone}" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>用户的收货电话
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>消费金额
            </label>
            <div class="layui-input-inline">
                <input type="text" id="money" name="money" readonly="true" value="${user.money}" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">账户状态</label>
            <div class="layui-input-block">
                <input type="checkbox" name="pflag" ${user.pflag==1?'checked':''} lay-skin="switch" lay-text="正常|冻结">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">会员等级</label>
            <div class="layui-input-block">
                <input type="checkbox" name="vip" ${user.vip==1?'checked':''} lay-skin="switch" lay-text="会员|普通">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>收货地址
            </label>
            <div class="layui-input-inline">
                <textarea name="address" placeholder="请输入内容"  required="" class="layui-textarea" lay-verify="required">${user.address}</textarea>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>用户的收货地址
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>注册时间
            </label>
            <div class="layui-input-inline">
                <input type="text" id="registertime" readonly="true" name="registertime" value="${user.registertime}" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="">
                提交
            </button>
        </div>
    </form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form','layer','laydate'], function(){
        var
            form = layui.form,
            layer = layui.layer,
            laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#birthday' //指定元素
        });

        //自定义验证规则
        form.verify({
            uname: function(value){
                if(value.length < 2){
                    return '用户名至少得2个字符啊';
                }
            },
            address: function(value){
                if(value.length < 5){
                    return '地址至少得5个字符啊';
                }
            }
//            ,tellphone: [/13[123569]{1}\d{8}|15[1235689]\d{8}|188\d{8}/, '号码为11位']

        });

        //监听提交
        form.on('submit(add)', function(data){
//            alert(data.field)；
            $.ajax({
                url:"../../userEdit",
                data:data.field,
                cache:false,
                success: function(data){
                    //debugger;
                    if(data>0){
                        //layer.msg("编辑成功",{icon:6});
                        alert("编辑成功")
                    }else{
                        //layer.msg("编辑失败",{icon:5});
                        alert("编辑失败")
                    }
                    //location.href="../../pages/user/users";
                    var index = parent.layer.getFrameIndex( window.name);   //获得弹出层之前的页面，在接收到返回数据后自动关闭弹出层
                    parent.layer.close(index);
                },
                type:"post",
                dataType:"json"
            });
            //发异步，把数据提交给php
            /*layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;*/
        });
    });
</script>
</body>

</html>