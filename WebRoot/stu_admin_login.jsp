<%@ page language="java" import="java.util.*,stu_admin_login.*" contentType="text/html; charset=utf-8"%>
<%
		String id = new String(request.getParameter("Username").getBytes("ISO-8859-1"), "utf-8");
		String psd = request.getParameter("Psd");
		String stuff = new String(request.getParameter("Type").getBytes("ISO-8859-1"), "utf-8");
 		session.setAttribute("stuff", stuff);
		if(stuff.equals("学生") || stuff=="学生")
 		{
 			StuInfo stu = new StuInfo();
 			stu.setStu_ID(id);
 			stu.setStu_Psd(psd); 
 			StuInf stuser = new Stu_Admin();
 			boolean flag = stuser.stuLogin(stu);
 			if(flag)
 			{
 				session.setAttribute("Stu_id",id);
 				session.setAttribute("Stu_psd", psd);
 				response.sendRedirect("index_Stu.html");
 			}
 			else
 				response.sendRedirect("login.jsp");
		}
		else if(stuff.equals("管理员") || stuff=="管理员")
 		{
 			AdminInfo admin = new AdminInfo();
 			admin.setAdmin_NAME(id);
 			admin.setAdmin_Psd(psd);
 			AdminInf aduser = new Stu_Admin();
 			boolean flag=aduser.adminLogin(admin);
 			if(flag)
 			{
 				session.setAttribute("Admin_name", id);
 				session.setAttribute("Admin_psd", psd);
 				response.sendRedirect("index_Admin.html");
 			}
 			else
 				response.sendRedirect("login.jsp");
 		}
  %>
<html>
  <head>
    
    <title>学生登录</title>
  </head>
  
  <body>
  
  
  </body>
</html>
