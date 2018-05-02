<%--
  Created by IntelliJ IDEA.
  User: 孔泽琦
  Date: 2018/5/2
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<form class="layui-form" method="post" enctype="multipart/form-data"
      action="${pageContext.request.contextPath}/manager/editPimageByPid">
  <input type="hidden" name="pid" value="${pimagePid}">
  <input type="file" name="pimage"><br>
  <input type="submit" value="添加">
</form>

</body>
</html>
