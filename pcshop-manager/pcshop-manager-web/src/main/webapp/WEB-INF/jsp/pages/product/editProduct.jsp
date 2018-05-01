<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>编辑商品</title>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css">--%>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
</head>
<body>
<div class="weadmin-body">
  <form class="layui-form" method="post" enctype="multipart/form-data" action="">
    <div class="layui-form-item">
      <label class="layui-form-label">
        <span class="we-red">*</span>商品类别
      </label>
      <div class="layui-input-inline" id="selectCid">
        <select  name="cid" id="select">
        </select>
      </div>
    </div>
    <div class="layui-form-item">
      <label for="pname" class="layui-form-label">
        <span class="we-red">*</span>商品名称
      </label>
      <div class="layui-input-inline">
        <input type="text" id="pname" name="pname" value="${ProductMsg.pname}"  autocomplete="off"
               class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label for="shopprice" class="layui-form-label">
        <span class="we-red">*</span>商品价格
      </label>
      <div class="layui-input-inline">
        <input type="text" value="${ProductMsg.shopprice}" id="shopprice" name="shopprice"   autocomplete="off"
               class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label for="repertory" class="layui-form-label">
        <span class="we-red">*</span>商品库存
      </label>
      <div class="layui-input-inline">
        <input type="text" id="repertory" name="repertory"   autocomplete="off"
               class="layui-input" value="${ProductMsg.repertory}">
      </div>
    </div>
    <div class="layui-form-item">
      <label for="pcount" class="layui-form-label">
        <span class="we-red">*</span>商品销量
      </label>
      <div class="layui-input-inline">
        <input type="text" id="pcount" readonly="true" name="pcount"   autocomplete="off"
               class="layui-input" value="${ProductMsg.pcount}">
      </div>
    </div><div class="layui-form-item">
      <label class="layui-form-label">
        <span class="we-red">*</span>上架状态
      </label>
      <div class="layui-input-inline">
        上架:<input type="radio"  readonly="true" name="pflag"   autocomplete="off"
               class="layui-input" value="1">
        下架:<input type="radio"  readonly="true" name="pflag"   autocomplete="off"
               class="layui-input" value="2">
      </div>
     </div><div class="layui-form-item">
      <label  class="layui-form-label">
        <span class="we-red">*</span>是否热门
      </label>
      <div class="layui-input-inline">
        是:<input type="radio"  disabled  name="ishot"   autocomplete="off"
               class="layui-input" value="1">
        否:<input type="radio"   disabled name="ishot"   autocomplete="off"
                 class="layui-input" value="0">
      </div>
    </div>
    <div class="layui-form-item">
      <label for="cost" class="layui-form-label">
        <span class="we-red">*</span>商品成本
      </label>
      <div class="layui-input-inline">
        <input type="text" id="cost" name="cost" autocomplete="off"
               class="layui-input" value="${ProductMsg.cost}">
      </div>
    </div>
    <div class="layui-form-item layui-form-text">
      <label for="pdesc" class="layui-form-label">描述</label>
      <div class="layui-input-block">
        <textarea id="pdesc" name="pdesc" class="layui-textarea">${ProductMsg.pdesc}</textarea>
      </div>
    </div>
    <div class="layui-form-item">
      <input type="hidden" id="pid" name="pid"  autocomplete="off"
             class="layui-input" value="${ProductMsg.pid}">
      <input type="hidden" id="pimage" name="pimage"  autocomplete="off"
             class="layui-input" value="${ProductMsg.pimage}">
      <button id="edit" class="layui-btn" lay-filter="edit" lay-submit="">编辑</button>
    </div>
  </form>
</div>


<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui/lay/modules/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/listProduct.js"></script>

<script type="text/javascript">

  $(function(){
    var cid="${ProductMsg.cid}"
    $.post(
            "${pageContext.request.contextPath}/manager/listCategory",
            function(data){
              var str= "";
              for(var i=0;i<data.length;i++){
                if(data[i].cid==cid){
                  str+="<option selected='selected' value='"+data[i].cid+"'>"+data[i].cname+"</option>"
                }
                str+="<option value='"+data[i].cid+"'>"+data[i].cname+"</option>"
              }
              $("#select").html(str);
            },
            "json"
    )
    var ishot="${ProductMsg.ishot}"
    var hots= document.getElementsByName("ishot")
    for(var i=0;i<hots.length;i++){
      if(hots[i].value==ishot){
        hots[i].checked="checked";
      }
    }
    var pflag="${ProductMsg.pflag}"
    var pflags= document.getElementsByName("pflag")
    for(var i=0;i<pflags.length;i++){
      if(pflags[i].value==pflag){
        pflags[i].checked="checked";
      }
    }
  })
</script>
</body>
</html>
