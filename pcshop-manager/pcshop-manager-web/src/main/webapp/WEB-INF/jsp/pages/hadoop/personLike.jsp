<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/19
  Time: 21:15
  To change this template use File | Settings | File Templates.
  实现用户的喜好分析
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/dist/echarts.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/jquery-2.2.4.js"></script>
<html>
<head>
    <title>用户喜好</title>
</head>
<body>



<!--实现两个功能 -->
<!-- 第一个:不同年龄段的人,不同喜好,通过柱状图显示,显示前10个-->
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">

      <div class="layui-form-item">

        <div class="layui-inline">
          <label class="layui-form-label">年龄范围</label>
          <!-- 年龄比较的小的部分 -->
          <div class="layui-input-inline" style="width: 100px;">
            <input type="text" name="age_min" id="age_min" placeholder="0" autocomplete="off" class="layui-input">
          </div>
          <div class="layui-form-mid">-</div>
          <div class="layui-input-inline" style="width: 100px;">
            <!-- 年龄比较的大的部分 -->
            <input type="text" name="age_max" id="age_max" placeholder="100" autocomplete="off" class="layui-input">

          </div>
          <div class="layui-input-inline" style="width: 100px;">

            <button class="layui-btn layui-btn-radius layui-btn-normal" id="submit" ><i class="layui-icon">&#xe615;</i>  搜索</button>
          </div>

        </div>
        <!--图形显示 -->
        <div id="main" style="width: 90%;height:70%;"></div>

      </div>


    </div>
  </div>


</div>

<script>
  //JavaScript代码区域
  layui.use('element', function(){
    var element = layui.element;

  });
  //实现数字js验证
  $(function(){

    //获取较大的年龄
    var age_max = 0;
    var  age_min =  0;
    //验证年龄的正则表达式
    var reg_str ="^[0-9]+(\.[0-9]{1,3})?$";
    var  reg = new RegExp(reg_str);
    layui.use('layer',function(){
      var layer = layui.layer;

      $("#age_min").blur(function(){
        //获取较小的年龄
        age_min =  $("#age_min").val();
        if(reg.exec(age_min)){
          //年龄符合要求
          layer.msg("年龄输入正确",{icon:1 });

        }else{
          //年龄不符合要
          layer.msg("请输入正确的年龄",{icon:2});
        }
      });
      // 验证较大年龄的文本框中的
      $("#age_max").blur(function(){
        age_max = $("#age_max").val();
        //正则验证
        if(reg.exec(age_max)){
          //年龄符合要求
          layer.msg("年龄输入正确",{icon:1 });

        }else{
          //年龄不符合要求
          layer.msg("请输入正确的年龄",{icon:2});
        }
        if(age_max<=age_min){
          layer.msg("请输入正确的年龄",{icon:2});
        }
      });

    });

    //给按钮派发事件
    var categoryNameArr = new Array();
    var categoryCountArr = new Array();
    //获取到的数据
    $("#submit").click(function(){
      age_min =  $("#age_min").val();
      age_max = $("#age_max").val();
      $.ajax({
        url:"${pageContext.request.contextPath}/productIsHot/getDataByAgeRange",
        data:{"age_min":age_min,"age_max":age_max },
        async: false,
        success:function(data){
          for (var i= 0 ;i < data.categoryName.length;i++){
            categoryNameArr[i]=data.categoryName[i];
          }
          for(var i = 0 ; i<  data.categoryCount.length;i++){
            categoryCountArr[i]= data.categoryCount[i];
          }
        }
      });
      var main = echarts.init(document.getElementById("main"));
      var option = {
        title: {
          text: '不同年龄对商品的喜好'
        },
        tooltip: {},
        legend: {
          data: ['某类商品购买的次数']
        },
        xAxis: {
          data: categoryNameArr
        },
        yAxis: {},
        series: [{
          //图形的样式:bar,柱状图,line,折线统计图, areaStyle: {},添加阴影部分
          name: '某类商品购买的次数',
          type: 'line',
          data: categoryCountArr,

        }]
      };
      // 使用刚指定的配置项和数据显示图表。
      main.setOption(option);





    });

  });


</script>
</body>
</html>
