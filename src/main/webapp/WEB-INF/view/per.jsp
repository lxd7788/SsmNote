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
<div style="margin-bottom: 5px;">          
 
<!-- 示例-970 -->
<ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>
 
</div>
 <div style="height:100px;display:block">
 		<iframe  src="<%=path%>/login.do" style="width:100%;height:100%"> 22</iframe>
 </div>
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
  <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
  <button class="layui-btn" data-type="isAll">验证是否全选</button>
</div>
 
<table class="layui-table" lay-data="{width: 892, height:332, url:'<%=path %>/data.do', page:true}" lay-filter="demo" , id:'idTest'>
  <thead>
    <tr>
      <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
      <th lay-data="{field:'name', width:80, sort: true, fixed: true}">ID</th>
      <th lay-data="{field:'age', width:80}">用户名</th>
      <th lay-data="{field:'img', width:80, sort: true}">性别</th>

      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
 <!--  -
<table class="layui-table" lay-size="lg">
  <colgroup>
    <col width="150">
    <col width="200">
    <col>
  </colgroup>
  <thead>
    <tr>
      <th>图片</th>
      <th>票价</th>
      <th>详情</th>
      <th>操作</th>
    </tr> 
  </thead>
  <tbody>
    <tr>
      <td><img alt="" src="img/h2.jpg"></td>
      <td>2016-</td>
      <td>人生就像是一场修行</td>
      		<td>够买</td>
    </tr>
    <tr>
      <td><img alt="" src="img/h2.jpg"></td>
      <td>2016-</td>
      <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
      <td>够买</td>
    </tr>
    <tr>
      <td><img alt="" src="img/h2.jpg"></td>
      <td>2016-11</td>
      <td> Life is either a daring adventure or nothing.</td>
      <td>够买</td>
    </tr>
        <tr>
      <td><img alt="" src="img/h2.jpg"></td>
      <td>2016-11</td>
      <td> Life is either a daring adventure or nothing.</td>
      <td>够买</td>
    </tr>
        <tr>
      <td><img alt="" src="img/h2.jpg"></td>
      <td>2016-11</td>
      <td> Life is either a daring adventure or nothing.</td>
      <td>够买</td>
    </tr>
  </tbody>
</table>
-->
<div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
  <input type="text" class="layui-input" id="test1">
</div>
 

<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
               
          
<script src="<%=path %>/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //执行一个laydate实例
  laydate.render({
    elem: '#test1' //指定元素
    	  ,done: function(value, date, endDate){
    		    alert(value); //得到日期生成的值，如：2017-08-18
    		    console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
    		    console.log(endDate); //得结束的日期时间对象，开启范围选择（range: true）才会返回。对象成员同上。
    		  }
  });

  
});
</script>
<script>
layui.use('table', function(){

	 var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.name + ' 的查看操作');
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
        obj.del();
        layer.close(index);
      });
    } else if(obj.event === 'edit'){
      layer.alert('编辑行：<br>'+ JSON.stringify(data))
    }
  });
  
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
    		var t='xxxxxxx';
    	layer.open({title: '提示',offset: '100px',skin: 'layui-layer-lan',content:t+'<input id="id" type="text">',btn: ['确定'],
            yes: function(index, layero){
            var v=	$(window.parent.document).find("#id").val();
               
               console.log(layero);
				  		 layer.close(index);
				  		 window.location.reload();
            }
        });

    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>

</body>
</html>