<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>电脑特卖</title>
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
</head>
<body>
<div class="weadmin-body">
    <div class="layui-row" align="center">
        <form class="layui-form layui-col-md12 we-search" onsubmit="return false;">
            商品搜索：
            <div class="layui-inline">
                <input type="text" id="title" name="pname" placeholder="请输入商品名称关键字" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" lay-submit="" lay-filter="search" data-type="reload"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <div class="weadmin-block demoTable" >
        <button class="layui-btn layui-btn-danger" data-type="getCheckData"><i class="layui-icon">&#xe640;</i>批量删除</button>
        <button class="layui-btn" onclick="WeAdminShow('添加商品','./addProduct',500,500)"><i class="layui-icon">&#xe61f;</i>添加</button>

    </div>

    <table id="demo" class="layui-hide" <%--lay-filter="test"--%>></table>

    <%--<script src="${pageContext.request.contextPath}/js/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/modules/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/listProduct.js"></script>--%>

    <script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/lib/layui/lay/modules/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/listProduct.js"></script>

    <div class="weadmin-block removeOne" >
        <script type="text/html" id="operateTpl">
            <button onclick="WeAdminEdit('编辑商品','../../manager/toEditProduct?pid={{d.pid}}','{{d.pid}}',500,500)" id="updateOne" value="{{d.pid}}" class="layui-btn " data-type="updateOne">
                <i class="layui-icon">&#xe642;</i>编辑
            </button>
            <button class="layui-btn layui-btn-danger" id="removeOne" value="{{d.pid}}" onclick="removeOne(this)" data-type="removeOne">
                <i class="layui-icon">&#xe640;</i>删除
            </button>
        </script>
    </div>

    <script type="text/html" id="pimagecheckbox">
        <form class="layui-form">
            <img src="${pageContext.request.contextPath}/{{d.pimage}}">
        </form>
    </script>
    <script type="text/html" id="pflagcheckbox">
        <form class="layui-form">
            <input id="putaway" value="{{d.pid}}" type="checkbox" name="itemstatus" lay-filter="itemstatus" lay-skin="switch" lay-text="上架|下架"
                   {{1==d.pflag?'checked':''}}/>
        </form>
    </script>
    <script type="text/javascript">


        function removeOne(obj){
           var pid=  obj.value;
            $.ajax({
                url:"${pageContext.request.contextPath}/manager/removeOne",
                data:{"pid":pid},
                success:function(data){
                    if(data>0){
                        $('.layui-laypage-btn').click();
                        alert("删除成功")
                    }else{
                        alert("删除失败")
                    }
                }
            });
        }
    </script>


</div>
</body>
</html>
