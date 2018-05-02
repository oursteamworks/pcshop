<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title><i class="layui-icon">&#xe735;</i>&nbsp;电脑特卖</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
  <script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/category.js" charset="utf-8"></script>
  <script src="${pageContext.request.contextPath}/static/js/weadmin.js" charset="utf-8"></script>
</head>
<body>
<div class="weadmin-body">
  <!-- 模糊查询模块 -->
  <div class="layui-row" style="margin-top: 10px;margin-left: 20px">
    <form class="layui-form layui-col-md12 we-search" onsubmit="return false;">
      分类搜索：
      <div class="layui-inline">
        <input type="text" id="cname" name="cname" placeholder="请输入分类名称关键字" autocomplete="off" class="layui-input">
      </div>
      <button class="layui-btn layui-btn-radius" lay-submit="" lay-filter="search" data-type="reload"><i class="layui-icon">&#xe615;</i>搜索</button>

    </form>

  </div>
  <!-- 添加及批量删除模块 -->
  <div class="weadmin-block demoTable" style="margin-top: 10px;margin-left: 20px" >
    <button class="layui-btn layui-btn-radius layui-btn-danger" data-type="getCheckData"><i class="layui-icon">&#xe640;</i>批量删除</button>
    <button class="layui-btn layui-btn-radius"  onclick="we_admin_show('添加分类','./addCategory',400,300)"><i class="layui-icon">&#xe61f;</i>添加</button>
  </div>

  <!-- 数据显示 -->
  <table class="layui-hide" style="margin-left: 20px;"  id="categoryList" ></table>

  <%--编辑/删除--%>
  <script type="text/html" id="operateTpl">
   <button class="layui-btn layui-btn-sm" title="编辑" value="{{d.cid}}"  onclick="we_admin_edit('编辑分类','../../category/getCategotyByCid?cid='+'{{d.cid}}','{{d.cid}}',400,300)">
     <i class="layui-icon">&#xe642;</i>编辑
   </button>

   <button class="layui-btn layui-btn-sm layui-btn-danger" title="删除" value="{{d.cid}}" id="deleteCategory" onclick="deleteCategoryByCid(this,'{{d.cid}}')" data-type="deleteCategory">
     <i class="layui-icon">&#xe640;</i> 删除
   </button>
  </script>
  <!-- 分类状态显示模块 -->
  <script type="text/html" id="shelfTpl">
    <form class="layui-form">
      <input type="checkbox" value="{{d.cid}}" name="cstatus" lay-filter="cstatus" lay-skin="switch" lay-text="正常|下架" {{1==d.cstatus?'checked':''}}>
      <%--<input type="checkbox" name="itemstatus" lay-filter="itemstatus" lay-skin="switch" lay-text="正常|下架" {{1==d.status?'checked':''}}/>--%>
    </form>
  </script>
<!-- 删除 -->
  <script type="text/javascript">

    function deleteCategoryByCid(obj, cid) {
      var flg = confirm("确定要删除所选分类吗?")
      var cid = cid;
      if (flg) {
        $.post(
                '../../category/deleteCategoryByCid',
                {"cid": cid},
                function (data) {
                  if (data) {
                    alert('删除成功');
                    //删除成功后加载当前页
                    $('.layui-laypage-btn').click();
                  } else {
                    alert('删除失败');
                    //删除成功后加载当前页
                    $('.layui-laypage-btn').click();

                  }
                }
        )
      }

    }
  </script>
</div>

</body>
</html>
