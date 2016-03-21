<%@ page language="java" import="java.util.*,apartment.*" pageEncoding="utf-8"%>

<html>
  <head>
    
    <title>BudAdd.jsp</title>

  </head>
  
  <body>
	<%
		Stu_Apart_Admin stu = new Stu_Apart_Admin();
		stu.setApart_ID(Integer.parseInt(new String(request.getParameter("Building_Name").getBytes("ISO-8859-1"), "utf-8")));
		stu.setApart_com(new String(request.getParameter("Building_Introduction").getBytes("ISO-8859-1"), "utf-8"));
		stu.addApart();
		out.print("更新成功。");
	 %>
  </body>
</html>
