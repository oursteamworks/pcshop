
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/dist/echarts.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/jquery-2.2.4.js"></script>
<html>
<head>
    <title>利润分析</title>
</head>
<body>


  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">

      <div class="layui-form-item">
       <%-- <select name="category" lay-verify="" id="productCategory">
          <option value="">请选择一个商品的类别</option>

        </select>--%>
        <%-- <select name="city" lay-verify="" lay-search>
           <option value="010">layer</option>
           <option value="021">form</option>
           <option value="0571" selected>layim</option>
           ……
         </select>--%>
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
  $(function(){

    var data1=new Array(new  Array());

    $.ajax({
      url:"${pageContext.request.contextPath}/productIsHot/getAllProduct",
      async:false,
      success:function(data){
        for(var i =0 ; i<data.length ; i++){
          var arr = new Array(4);
          for(var j =0 ; j<arr.length ;j++){
            if(j==0){
              arr[j]=data[i].shopprice;
            }else if(j==1){
              arr[j]=((data[i].shopprice-data[i].cost)/data[i].cost)*100;
            }else if(j==2){
              arr[j]=data[i].cost;
            }else if(j==3){
              arr[j]=data[i].pname;
            }else{
              break;
            }
          }
          data1[0][i]=arr;
        }
      }
    });
    console.log(data1);
    //显示图形

    //数组中的参数说明:第一个参数x轴的值
    //第二个参数y轴的值
    //第三个擦书:GDP
    //第四个参数 地区名,
    //第五个擦书:时间

    var main = echarts.init(document.getElementById("main"));
    option = {
      backgroundColor: new echarts.graphic.RadialGradient(0.3, 0.3, 0.8, [{
        offset: 0,
        color: '#f7f8fa'
      }, {
        offset: 1,
        color: '#cdd0d5'
      }]),
      title: {
        text: '每件商品的利率'
      },
      legend: {
        right: 10,
       // data: ['1990', '2015']
        data:['利率']
      },
      xAxis: {
        splitLine: {
          lineStyle: {
            type: 'dashed'
          }
        }
      },
      yAxis: {
        splitLine: {
          lineStyle: {
            type: 'dashed'
          }
        },
        scale: true
      },
      series: [{
        name: '利率',
        data: data1[0],
        type: 'scatter',
        //标记的大小,可以使用单个的数值 如10,可以设置为数组分别表示宽和高,如果需要每个数据的图形大小不一样,就可以使用回调函数
        //其中第一个参数 value 为 data 中的数据值。第二个参数params 是其它的数据项参数。
        symbolSize: function (data) {
          //Math.sqrt()对数值进行开方
          return Math.sqrt(data[2]) / 30;
        },
        label: {
          emphasis: {
            show: true,
            //参数 params 是 formatter 需要的单个数据集
            formatter: function (param) {
              return param.data[3];
            },
            position: 'top'
          }
        },
        itemStyle: {
          normal: {
            shadowBlur: 10,
            shadowColor: 'rgba(120, 36, 50, 0.5)',
            shadowOffsetY: 5,
            color: new echarts.graphic.RadialGradient(0.4, 0.3, 1, [{
              offset: 0,
              color: 'rgb(129, 227, 238)'
            }, {
              offset: 1,
              color: 'rgb(25, 183, 207)'
            }])
          }
        }
      }
     ]
    };

    // 使用刚指定的配置项和数据显示图表。
    main.setOption(option);

  });


</script>

</body>
</html>
