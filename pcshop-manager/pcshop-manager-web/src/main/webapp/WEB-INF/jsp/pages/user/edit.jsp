<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-后台管理系统-Admin 1.0</title>
    <%--<meta name="renderer" content="webkit">--%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
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
    <form class="layui-form" action="${pageContext.request.contextPath}/editDate" >
        <div class="layui-form-item">
            <label for="aname" class="layui-form-label">
                <span class="we-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="aname" name="aname" required="" lay-verify="required"
                       autocomplete="off" value="${admin.aname}" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>将会成为您唯一的登入名
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="we-red">*</span>手机号
            </label>
            <div class="layui-input-inline">
                <input type="text" value="${admin.phone}" id="phone" name="phone" required="" lay-verify="phone"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>将会成为您接收信息手机号
            </div>
        </div>
        <div class="layui-form-item">
            <label for="amail" class="layui-form-label">
                <span class="we-red">*</span>邮箱
            </label>
            <div class="layui-input-inline">
                <input type="text" value="${admin.amail}" id="amail" name="amail" required="" lay-verify="email"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>将会成为您收发通知邮箱
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="introduce" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <%--第一步--%>
                <textarea id="introduce" name="introduce"  class="layui-textarea" style="display: none">${admin.introduce}</textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <%--<label for="L_repass" class="layui-form-label">--%>
            </label>
            <input type="submit" class="layui-btn" lay-filter="add" lay-submit="" style="margin-left: 50px" value="提交">

        </div>
    </form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    /*layui.extend({
     admin: '{/}../../js/admin'
     });*/
    layui.use(['form','layedit','layer'], function(){
        var form = layui.form,
                layedit = layui.layedit,
                layer = layui.layer;

        //判断是否为数字的正则表达式
        var re = /^[0-9]+.?[0-9]*$/;
        //邮箱正则表达式
        var ma = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
        //自定义验证规则
        form.verify({
            aname: function(value){
                if(value.length < 5){
                    return '昵称至少得5个字符啊';
                }
            },
            phone:function(value){
                if($("#phone").val().length!=11&&!re.test($("#phone").val())){
                    return '请输入正确的号码';
                }
            },
            amail:function(value){
                if(ma.text(value)){
                    return '请输入正确的邮箱';
                }
            }
        });

        //初始化富文本编辑器
        layedit.build('introduce', {
            height: 400,//设置编辑器高度
            width:400,//设置富文本的宽度
            uploadImage:{
                url:'../../uploadImage',
                type:'post',
                dataType:'json'
            }
        });

        //监听提交
        form.on('submit(add)', function(data){
            //发异步，把数据提交给php
//            var user = data.field;
//            var aname = $("#aname").val();
//            var phone = $("#phone").val();
//            var amail = $("#amail").val();
//            alert("intro==="+data.field.introduce);
//            alert("intro==="+content);
            //alert(aname);
            /*alert(phone)
             alert(amail)*/
            //debugger;
            $.ajax({
                url:"../../editDate",
                data:data.field,
                cache:false,
                success: function(data){
                    //alert(data);
                    debugger;
                    /*if(data==-1){
                     layer.msg("请编辑后再提交",{icon:2});
                     alert("请编辑后再提交")
                     }else */
                    if(data>0){
                        layer.msg("编辑成功",{icon:6});
                        alert("编辑成功")
                    }else{
                        layer.msg("编辑失败",{icon:5});
                        alert("编辑失败")
                    }
                    location.href="../../pages/user/edit";
                },
                dateType:"json"
            });
        });
    });

</script>
</body>
</html>