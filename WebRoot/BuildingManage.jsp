<%@ page language="java" import="apartment.*"contentType="text/html;charset=utf-8" %>
<%
	Stu_Apart_Admin so = new Stu_Apart_Admin();
	String[] info = so.apartSelect().split(",");
	int len = info.length;
 %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宿舍管理系统</title>
<link href="yangshi.css" rel="stylesheet" type="text/css" />
</head>
<body background="Images/index_picture1.jpg">
 <table width="100% ">
	    <tr>
		    <td height="30"  background="images/mainMenuBg.jpg" style="padding-left:25px;color:green;font-weight:bold;">学生管理</td>
		</tr>
		<tr>
              <td height="470" align="center" valign="top" >
			     <form name="form1" method="post">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td width="28%" height="30" style="padding-left:20px;color:green;font-weight:bold;"> 功能导航：  <a href="BuildingAdd.jsp">添加楼宇</a><a href="AddAdmin.jsp">        添加公寓管理员</a></td>
                      </tr>
                    </table>
                 </form>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                 <tr align="center"  class="t1">
                    <td height="25" bgcolor="#D5E4F4"><strong>公寓号</strong></td>
                    <td bgcolor="#D5E4F4"><strong>公寓备注</strong></td>
                    <td bgcolor="#D5E4F4"><strong>公寓管理员</strong></td>
                    <td bgcolor="#D5E4F4" ><strong><a href="BudUpdate.jsp">修改公寓备注</a></strong></td>
                  </tr>
                  <%
                  		int times = len/2;
                  		int j = 0,k;
                  		String sql;
                  		for(int i=1;i<=times;i++)
                  		{
                  			sql ="select apartmenter_NAME from apartmenter where apartment_ID = "+Integer.parseInt(info[j])+";";
                  			String af = so.aparterFind(sql); 
                  %>
                  			<tr align="center">
                     			<td height="25" align="center"><%=info[j] %></td>
                      			<td><%=info[j+1] %></td>
                      			<td><%=af %></td>         
                    		</tr>
                    <%
                    		j+=2;
                  		}
                   %>
                </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="35" background="Images/bootBg.jpg">&nbsp;</td>
    </tr>
  </table>
</body>
</html>
