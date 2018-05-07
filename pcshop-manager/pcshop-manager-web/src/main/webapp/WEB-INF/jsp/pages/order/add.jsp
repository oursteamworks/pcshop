<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加订单-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form" >
        <div class="layui-form-item">
            <label for="oid" class="layui-form-label">
                <span class="we-red">*</span>订单编号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="oid" name="oid" required="" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="oname" class="layui-form-label">
                <span class="we-red">*</span>订单名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="oname" name="oname" required="" lay-verify="required" autocomplete="on" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="we-red">*</span>客户
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="shouhuoren" required="" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="we-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="phone" name="phone" required="" lay-verify="phone" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="oaddress" class="layui-form-label">
                <span class="we-red">*</span>收货地址
            </label>
            <div class="layui-input-inline">
                <input type="text" id="oaddress" name="shouhuodizhi" required="" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="logistics" class="layui-form-label">
                <span class="we-red">*</span>配送物流
            </label>
            <div class="layui-input-inline">
                <select id="logistics" name="shipping" class="valid">
                    <option value="shentong">申通物流</option>
                    <option value="shunfeng">顺丰物流</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="ispay" class="layui-form-label">
                <span class="we-red">*</span>支付方式
            </label>
            <div class="layui-input-inline">
                <select id="ispay" name="contrller">
                    <option>支付方式</option>
                    <option>支付宝</option>
                    <option>微信</option>
                    <option>货到付款</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="clockwork" class="layui-form-label"><span class="we-red">*</span>发票抬头</label>
            <div class="layui-input-inline">
                <input type="text" id="clockwork" name="email" required="" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="addproduct" class="layui-form-label">商品增加
                <a  id="addproduct" class="layui-btn layui-btn-sm layui-btn-primary" onclick="addTable();"><i class="layui-icon">&#xe608;</i> 添加</a>
            </label>
            <div class="layui-input-block">
                <table class="layui-table" id="myTable">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>商品名称</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>总价</th>
                        <th>操作</th>
                    </tr>

                    </thead>
                 </table>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="orderdesc" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" id="orderdesc" name="desc" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <button class="layui-btn" lay-filter="add" lay-submit="">增加</button>
        </div>
    </form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/orderlist.js" charset="utf-8"></script>
<script>
    layui.use(['form',  'jquery', 'table', 'layer'], function() {
        var form = layui.form,
            $ = layui.jquery,
            table = layui.table,
            layer = layui.layer;

        //监听提交
        form.on('submit(add)', function(data){
            var order=data.field;
            //发异步，把数据提交给php
            $.ajax({
                url:"../addorder",
                data : {
                    "oid" : order.oid,
                    "oname" : order.oname,
                    "oaddress" : order.oaddress,
                    "uid" : order.uid,
                },  success: function (data) {      //成功，回调函数
                    layer.msg("增加成功", {icon: 1},function () {
                        // 获得frame索引
                        var index = parent.layer.getFrameIndex(window.name);
                        //关闭当前frame
                        parent.layer.close(index);
                    })
                }
            })
        });


        var num = 3;

        window.addTable = function() {
            var tableHtml = "";
            tableHtml += '<tr id="tr' + num + '">' +
                '<td>'+num+'</td>' +
                '<td><div class="layui-input-inline"><input type="text" name="canshu1" class="layui-input"></div></td>' +
                '<td><div class="layui-input-inline"><input type="text" name="canshu2" class="layui-input"></div></td>' +
                '<td><div class="layui-input-inline"><input type="text" name="canshu3" class="layui-input"></div></td>' +
                '<td><div class="layui-input-inline"><input type="text" name="canshu4" class="layui-input"></div></td>' +
                '<td><a style="cursor: pointer; color: blue;" onclick="removeTr(' + num + ')">删除</a>' +
                '</td>' +
                '</tr>';

            var elements = $("#myTable").children().length; //表示id为“mtTable”的标签下的子标签的个数

            $("#myTable").children().eq(elements - 1).after(tableHtml); //在表头之后添加空白行
            num++;
        }
        //删除行
            function removeTr(trNum) {
            $("#tr" + trNum).remove();
        }
   });

</script>
</body>

</html>