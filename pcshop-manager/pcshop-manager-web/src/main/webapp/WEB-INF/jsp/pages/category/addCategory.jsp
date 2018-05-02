<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/20
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
  <script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
  <script src="${pageContext.request.contextPath}/lib/layui/lay/modules/jquery.js"></script>
</head>
<body>
<form class="layui-form" action="" >
  <div class="layui-form-item">
    <label class="layui-form-label">分类名称</label>
    <div class="layui-input-block">
      <input type="text" name="cname" style="width: auto" id="selectCategoryByCname" required  lay-verify="required" placeholder="请输入分类名称" autocomplete="off" class="layui-input">
      <span id="cnameMsg" style="color: red;"></span>
    </div>

  </div>

    <input type="hidden" name="aid" value="1">
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="add">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>

</form>


<script type="text/javascript">
    layui.use(['form', 'layer', 'jquery'], function () {
        var form = layui.form,
//              layer = layui.layer,
                $ = layui.jquery;
        flg = false;
        $("#selectCategoryByCname").blur(function () {
            var cname = document.getElementById("selectCategoryByCname").value;
            $("#cnameMsg").html("");
            if (cname != null && cname != '') {
                $.ajax({
                    url: '../../category/selectCategoryByCname',
                    data: {"cname": cname},
                    dataType: 'json',
                    success: function (data) {
                        if (data) {
                            $("#cnameMsg").html("分类名已存在");
                        } else {
                            $("#cnameMsg").html("可以使用的分类名");
                            flg=true;

                        }
                    }
                });
            } else {
                layer.msg("请输入分类名称");
            }
            ;

        });
        form.on('submit(add)', function (data) {
            if(flg=true){
                var tabCategory = data.field;
                if(tabCategory!=null && tabCategory!=""){
                    $.post(
                            '../../category/addCategory',
                            {"cname":tabCategory.cname,"aid":tabCategory.aid},
                            function(result){
                                if(result){
                                    alert("添加成功")
                                    var index = parent.layer.getFrameIndex( window.name);
                                    parent.layer.close(index);
                                }else{
                                    alert("添加失败")
                                }
                            }
                    )}else{
                    layer.msg("添加失败");
                }
            }
        });
    });

</script>

</body>
</html>
