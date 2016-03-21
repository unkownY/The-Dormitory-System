<%@ page language="java" import="java.util.*,stu_admin_login.*" pageEncoding="utf-8"%>

<%
	String name = (String)session.getAttribute("stuff");
	String psd1 = new String(request.getParameter("Password").getBytes("ISO-8859-1"),"gb2312"); 		//原始密码
	String psd2 = new String(request.getParameter("Password2").getBytes("ISO-8859-1"),"gb2312");	//新密码
	String id = null;						
	String psd = null;			//登录密码
 %>
<html>
  <head>
    
    <title>StuPsdUpdate.jsp</title>
    
  </head>
  
  <body>
  	<%
  		if(name.equals("学生"))
		{
			id = (String)session.getAttribute("Stu_id");				//学生登录 名
			psd = (String)session.getAttribute("Stu_psd");					//学生登录 密码
		
			if(psd1.equals(psd))							//学改学生密码
			{
				StuInfo stu = new StuInfo();
				stu.setStu_ID(id);
				stu.setStu_Psd(psd2);	//新密码
				Psd newPsd = new Psd();
				if(newPsd.stuPsd(stu))
				{
					out.print("密码修改成功。");
				}
				else
					out.print("密码修改失败。");
			}
			else
					out.print("原密码输入错误。");
		}
		else if(name.equals("管理员"))
		{
			id = (String)session.getAttribute("Admin_id");				//学生登录 名
			psd = (String)session.getAttribute("Admin_psd");					//学生登录 密码
			
			if(psd1.equals(psd))
			{
				AdminInfo admin = new AdminInfo();
				admin.setAdmin_ID(id);
				admin.setAdmin_NAME(psd2);	//新密码
				Psd newPsd = new Psd();
				if(newPsd.adminPsd(admin))
				{
					out.print("密码修改成功。");
				}
				else
					out.print("密码修改失败。");
			}	
			else
					out.print("原密码输入错误。");
		}
  		
  	%>
  </body>
</html>
