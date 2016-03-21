<%@ page language="java" import="java.util.*,apartment.*" pageEncoding="utf-8"%>

<html>
  <head>
    
    <title>StuAdd.jsp</title>

  </head>
  
  <body>
  <%
	Stu_Apart_Admin stu = new Stu_Apart_Admin();
	stu.setStu_ID(new String(request.getParameter("Student_Username").getBytes("ISO-8859-1"), "utf-8"));
	stu.setStu_NAME(new String(request.getParameter("Student_Name").getBytes("ISO-8859-1"), "utf-8"));
	stu.setGender(new String(request.getParameter("Student_Gender").getBytes("ISO-8859-1"), "utf-8"));
	stu.setMajor(new String(request.getParameter("Major").getBytes("ISO-8859-1"), "utf-8"));
	stu.setApart(Integer.parseInt(request.getParameter("Apart")));
	stu.setDom(Integer.parseInt(request.getParameter("Dom")))	;
	stu.addStu();
	out.print("更新成功。");
 %>
  </body>
</html>
