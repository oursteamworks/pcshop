<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="keywords" content=""/>
  <meta name="description" content=""/>
  <title>EarlyBird后台管理平台</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/jquery-2.2.4.js"></script>
</head>
<body>
<div class="container">
  <blockquote class="layui-elem-quote"><span style="color:#FF5722">超级管理员</span>
    <p>EarlyBird后台管理平台欢迎您！</p></blockquote>

  <fieldset class="layui-elem-field site-demo-button">
    <legend>近七天统计</legend>
    <div class="layui-form">
      <table class="layui-table" lay-skin="nob">
        <tbody>
        <tr>
          <td id="vip"></td>
          <td id="turnover"></td>
        </tr>
        <%--<tr>
          <td>待发货订单（平台）：28个</td>
          <td>待发货订单（第三方）：23个</td>
        </tr>
        <tr>
          <td>机票订单：50个</td>
          <td>消费金额：<span class="price">1500000.00</span></td>
        </tr>
        <tr>
          <td>消费AGR：1000000</td>
          <td>提现金额：<span class="price">1500000.00</span></td>
        </tr>
        <tr>
          <td>待审核提现金额：<span class="price">1500000.00</span></td>
          <td></td>
        </tr>
--%>
        </tbody>
      </table>
    </div>
  </fieldset>

  <div id="main" style="width: 100%;height:400px;"></div>

</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/echarts.common.min.js"></script>
<script>
  var myChart = echarts.init(document.getElementById('main'));
  $(function(){
    //获取到一周内的注册的会员和订单的成交量
    $.ajax({
      url:'${pageContext.request.contextPath}/productIsHot/getVipAndTurnover',
      async: false,
      success:function(data)    {
        $("#vip").html("新注册会员："+data.vipCount+"个");
        $("#turnover").html("成交订单："+data.turnover+"个");
      }
    });
    //实现图像的分布,获取到相应的数据
    //创建一个数组存储,星期天数
    var weekday = new  Array();
    var  mapKey = new Array();
    var seriesdata =new Array();
    $.ajax({
      url:'${pageContext.request.contextPath}/productIsHot/getGraphData',
      async: false,
      success:function(data){
        var list = data.list;
        for(var i = 0 ; i< list.length ; i++){
          weekday[i]=list[i];
        }
        //获取到商品分类名称
        var map = data.map;
        for(var key in map){
          mapKey.push(key);
        }
        //获取数据 这是一个集合
        var indexAdminSeriesDataList =data.indexAdminSeriesDataList;
        for(var i= 0 ;i <indexAdminSeriesDataList.length ; i++){
          seriesdata.push(indexAdminSeriesDataList[i]);
        }

      }
    });

    var	option = {
      title: {
        text: '每类商品的销售量'
      },
      tooltip: {
        trigger: 'axis'
      },
      legend: {
        //分类的名称集合
        data:mapKey
      },
      grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
      },
      toolbox: {
        feature: {
          saveAsImage: {}
        }
      },
      xAxis: {
        type: 'category',
        boundaryGap: false,
        //星期的集合 这个也需要处理
        data: weekday
      },
      yAxis: {
        type: 'value'
      },
      series: seriesdata
    };

    myChart.setOption(option);

  });




</script>

</body>
</html>