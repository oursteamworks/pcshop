<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<button  onclick="addIndex()">一键导入索引库</button>


<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>

<script type="text/javascript">
  function addIndex(){
     /* $(this).addClass(disabled);*/
      $.post(
              "../../manager/importIndex",
              function(data){
                  console.log(data.success)
                    alert(data)
                    alert(JSON.stringify(data))

              }
      )
  }

</script>
</body>

</html>
