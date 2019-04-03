<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Object obj=session.getAttribute("user");
    %>
    <%
    	String path=(String) request.getContextPath();
    %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="<%=path %>/layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>  
 <div id="chart" style="width:400px;height:400px;"></div>
  <div id="charts" style="width:400px;height:400px;"></div>
 <script  src="<%=path %>/js/echarts.js"></script>
 <script type="text/javascript">
    // 初始化图表标签
    var myChart = echarts.init(document.getElementById('chart'));
    var options={
        //定义一个标题
        title:{
            text:'测试成绩'
        },
        legend:{
            data:['销量']
        },
        //X轴设置
        xAxis:{
            data:['60分','70分','80分','90分','100分']
        },
        yAxis:{
        },
        //name=legend.data的时候才能显示图例
        series:[{
            name:'销量',
            type:'bar',
            data:['12','32','45','21','1']
        }]

    };
    myChart.setOption(options);
</script>
 <script type="text/javascript">
    // 初始化图表标签
    var myChart = echarts.init(document.getElementById('charts'));
    var options={
        //定义一个标题
        title:{
            text:'测试成绩'
        },
        legend:{
            data:['销量']
        },
        //X轴设置
        xAxis:{
            data:['60分','70分','80分','90分','100分']
        },
        yAxis:{
        },
        //name=legend.data的时候才能显示图例
        series:[{
            name:'销量',
            type:'bar',
            data:['12','32','45','21','1']
        }]

    };
    myChart.setOption(options);
</script>
</body>
</html>