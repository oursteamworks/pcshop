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
  <input type="submit" value="修改">
</form>

</body>
</html>
