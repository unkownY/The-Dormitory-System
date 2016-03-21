<%@ page language="java" import="java.util.*,apartment.*" pageEncoding="utf-8"%>

<html>
  <head>

    <title>AparterAdd.jsp</title>
  </head>
  
  <body>
    <%
    	Stu_Apart_Admin stu = new Stu_Apart_Admin();
		stu.setApartID(Integer.parseInt(new String(request.getParameter("apartID").getBytes("ISO-8859-1"), "utf-8")));
		stu.setAparter_ID(Integer.parseInt(new String(request.getParameter("aparter_ID").getBytes("ISO-8859-1"), "utf-8")));
		stu.setAparter_NAME(new String(request.getParameter("aparter_NAME").getBytes("ISO-8859-1"), "utf-8"));
		stu.setAparter_gender(new String(request.getParameter("aparter_gender").getBytes("ISO-8859-1"), "utf-8"));
		stu.setPhone(new String(request.getParameter("phone").getBytes("ISO-8859-1"), "utf-8"));
		stu.addAparter();
		out.print("更新成功。");
     %>
  </body>
</html>
