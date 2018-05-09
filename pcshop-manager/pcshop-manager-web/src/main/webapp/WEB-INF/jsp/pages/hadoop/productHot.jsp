<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/17
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/dist/echarts.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/jquery-2.2.4.js"></script>
<html>
<head>
    <title>热销品</title>
</head>
<body>
<fieldset class="layui-elem-field site-demo-button">
    <legend>图表信息说明</legend>
    <div class="layui-form">
        <table class="layui-table" lay-skin="nob">
            <tbody>
            <tr>
                <td colspan="2">商品销售量折线统计图</td>
            </tr>
            <tr>
                <td>横轴表示商品的ID范围</td>
                <td>纵轴表示商品的销售量</td>
            </tr>
            <tr>
                <td> <div id="main" style="width: 600px;height:400px;"></div></td>
                <td>
                    <div id="pcountSoft" style="width: 400px;height:400px;margin-top: 10px; margin-left: 100px; " >
                        <ul id="productSort">
                            <li style="font-family: layui-icon">商品销售排行榜</li>
                        </ul>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</fieldset>


</body>
<script type="text/javascript">
    window.onload = function () {
        //实现商品销售量的折线统计图
        var counts = new Array();
        var pnameArr = new Array();
        var pidArr = new Array();
        var url = "${pageContext.request.contextPath}/productIsHot/productData";
        $.ajax({
            url: url,
            async: false,
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    counts[i] = data[i].pcount;
                    pnameArr[i] = data[i].pname;
                    pidArr[i] = data[i].pid;
                }
            }
        });
        var main = echarts.init(document.getElementById("main"));
        var option = {
            title: {
                text: '商品销量折线统计图'
            },
            tooltip: {},
            legend: {
                data: ['销量']
            },
            xAxis: {
                data: pidArr
            },
            yAxis: {},
            series: [{
                //图形的样式:bar,柱状图,line,折线统计图, areaStyle: {},添加阴影部分
                name: '销量',
                type: 'line',
                data: counts
            }]
        };
        // 使用刚指定的配置项和数据显示图表。
        main.setOption(option);
        //实现商品销售的排行榜
        //实现步骤:请求数据,根据商品的销售量进行排序
        var str = "";
        var productSort = $("#productSort").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/productIsHot/productCountSort",
            async: false,
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    str += "<li style='font-family: layui-icon;margin-top: 10px;font-size: 15px; '>" +

                            data[i].pname + "/" + data[i].pcount
                            + "</li>";
                }
                console.log(str);
                $("#productSort").append(str);
            }
        });


    }

</script>
</html>
