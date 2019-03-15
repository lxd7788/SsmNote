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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="per.jsp">111111111111</a>
success<br>
<span onclick="test()">获取modelmap</span>
<br>
<%-- <span>${key.name }</span> --%>
<c:forEach items="${key}" var="list" > 
<div>
<span>${list.name }</span><span>${list.age }</span><img class="imgf" src=${list.img } style="withd:50px;height:50px;">
<br>
<input type="button" name=${list.age } onclick="get(this)">get</span>
</div> 
</c:forEach>
<br>
<img id="imgf" src="">
<input id="file" type="file" name="filesssssssss"><button onclick="put()">上传</button>
</body>
<script type="text/javascript" src="<%=path %>/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

window.onload=function(){
document.getElementById("img").src='img/h2.jpg'
	
var mm='<%=obj%>';
alert(mm);

}
function put(){
	alert(111)
	var formData = new FormData();
   formData.append("file", document.getElementById("file").files[0]);  
	$.ajax({
		type:'POST',
		url:'<%=path %>/put.do',
		data: formData,
        contentType: false,
        processData: false,
        		dataTYpe:'TXT',
        		success:function(data){
        			alert(data)
        		}
	})
}

function get(img){
	alert(img.name)
}

function test(){
	if(session){
		alert(11)
	}else{
		alert(2)
	}
}


function session(){
	return true;
}
</script>
</html>