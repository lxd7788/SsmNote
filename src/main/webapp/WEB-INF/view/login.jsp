<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Object obj=session.getAttribute("user");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
success<br>
<span>获取modelmap</span>
<span>${key }</span>
<br>
<img id="img" src="">
</body>
<script type="text/javascript">
window.onload=function(){
document.getElementById("img").src='img/h2.jpg'
	
var mm='<%=obj%>';
alert(mm);

}

</script>
</html>