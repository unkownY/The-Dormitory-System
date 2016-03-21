<%@ page language="java" contentType="text/html;charset=utf-8" %>
<%
	String name = null;
	String stuff = (String)session.getAttribute("stuff");
	if(stuff.equals("学生"))
		 name = (String)session.getAttribute("Stu_id");
	else if(stuff.equals("管理员"))
		 name = (String)session.getAttribute("Admin_name");
 %>
<html>
 <head>
  <title>宿舍管理系统</title>
 </head>
 <body background="Images/index_picture6.jpg">
      <p  align="right" style="color:green;font-weight:bold;"> <%=name %> <a href="login.jsp" target = blank onclick="parent.window.close();">退出系统</a> </p>
      <p align="center" style="color:green;font-size:35px;font-weight:bold;">宿舍管理系统</p>
 </body>
</html>
