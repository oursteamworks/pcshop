
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
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
    <input type="text" name="cname" style="width: auto" id="selectCategoryByCname" required  lay-verify="required" value="${tabCategoryCustem.cname}" autocomplete="off" class="layui-input">

  </div>
    <label class="layui-form-label">分类管理员</label>
  <div style="width: 50%;text-align: center;margin-left: 28%" align="center" >
    <select name="aid" lay-verify="">
      <%--<option name="aid" value="${a.aid}">${tabCategoryCustem.admName}</option>--%>
      <c:forEach items="${admQueryList}" var="a">
        <option name="aid" value="${a.aid}" <c:if test="${a.admName==tabCategoryCustem.admName}">selected</c:if>>${a.admName}</option>
      </c:forEach>
    </select>
    <input type="hidden" name="cid" value="${tabCategoryCustem.cid}">
  </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="edit">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>

</form>
<script>
  layui.use(['layer','jquery','form'],function(){
    var layer = layui.layer,
            $=layui.jquery,
            form=layui.form;

    form.on('submit(edit)',function(data){
      var tabCategory = data.field;
      $.post(
              '../category/editCategory',
              {'cname':tabCategory.cname,'aid':tabCategory.aid,'cid':tabCategory.cid},
              function(result){
                if(result){
                  alert("修改成功")
                }else{
                  alert("修改失败")
                }
              }
      )
    });
  });
</script>
</body>
</html>
