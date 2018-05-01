<%--
  Created by IntelliJ IDEA.
  User: 孔泽琦
  Date: 2018/4/20
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品</title>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
    <script type="text/css">
        .weadmin-body{
            margin: auto;
            position: fixed;
        }

    </script>
</head>
<body>


<%--<script src="${pageContext.request.contextPath}/js/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/modules/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/listProduct.js"></script>--%>

<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui/lay/modules/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/listProduct.js"></script>

<div class="weadmin-body">
    <form class="layui-form" <%--method="post" enctype="multipart/form-data"--%>>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>商品类别
            </label>
            <div class="layui-input-inline" id="selectCid">
                <select name="cid" id="select">

                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="pname" class="layui-form-label">
                <span class="we-red">*</span>商品名称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="pname" name="pname"  autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <%--<div class="layui-form-item layui-form-text">
            <label for="pimage" class="layui-form-label">商品图片</label>
            <div class="layui-input-block">
                <input type="file" id="pimage" name="pimage">
            </div>
        </div>--%>
        <div class="layui-form-item">
            <label for="shopprice" class="layui-form-label">
                <span class="we-red">*</span>商品价格
            </label>
            <div class="layui-input-inline">
                <input type="text" id="shopprice" name="shopprice"   autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="repertory" class="layui-form-label">
                <span class="we-red">*</span>商品库存
            </label>
            <div class="layui-input-inline">
                <input type="text" id="repertory" name="repertory"   autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="cost" class="layui-form-label">
                <span class="we-red">*</span>商品成本
            </label>
            <div class="layui-input-inline">
                <input type="text" id="cost" name="cost" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="pdesc" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <textarea id="pdesc" name="pdesc" class="layui-textarea" ></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="add" class="layui-form-label">
            </label>
            <button id="add" class="layui-btn"  lay-filter="add" lay-submit="">增加</button>
        </div>
    </form>
</div>

<script type="text/javascript">
  $(function(){
         /*$.post(
             '${pageContext.request.contextPath}/manager/addProduct',
             {"cid":10000,"pname":"haha","pimage":"",
                  "shopprice":97654,"repertory":7765,
                    "cost":657,"pdesc":"很贵很贵"},
              function(data){
                  if(data!=0){
                      alert("上传成功")
                   }else{
                      alert("上传失败")
                }
              }
         )*/
     })
    $(function(){
        //分类信息的回显
        $.post(
            "${pageContext.request.contextPath}/manager/listCategory",
            "json",
            function(data){
                var str= "";
                for(var i=0;i<data.length;i++){
                    str+="<option value='"+data[i].cid+"'>"+data[i].cname+"</option>"
                }
                $("#select").html(str);
            }
        )
    });


</script>
</body>
</html>
