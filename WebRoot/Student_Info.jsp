<%@ page language="java" import="stu_admin_login.*" contentType="text/html;charset=utf-8" %>
<%
	String id = (String)session.getAttribute("Stu_id");
	StuInfo stu = new StuInfo();
	stu.setStu_ID(id);
	StuFind stuf = new StuFind();
	String[] a = stuf.stuFind(stu).split(",");
	String stu_id =a[0];
	String stu_name =a[1];
	String gender =a[2];
	String major =a[3];
	String apartment_id =a[4];
	String dom_id =a[5];
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="yangshi.css" rel="stylesheet" type="text/css" />
<title>学生个人信息</title>
</head>
<body bgcolor="#E6F5FF">
<center>
  <table width="900" border="0" cellspacing="0" cellpadding="0">   
    <tr>
      <td height="500" align="center" valign="top"><table width="900" border="0" cellspacing="0" cellpadding="0">
     <tr>		
       <td width="709" align="center" valign="top" bgcolor="#F6F9FE">
	      <table width="709" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">个人信息</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr align="center"  class="t1">
					<td  height="25" bgcolor="#D5E4F4"><strong>公寓号</strong></td>
                    <td bgcolor="#D5E4F4"><strong>宿舍号</strong></td>
					<td bgcolor="#D5E4F4"><strong>学号</strong></td>
                    <td bgcolor="#D5E4F4"><strong>姓名</strong></td>
                    <td bgcolor="#D5E4F4"><strong>专业</strong></td>
                  </tr>
                  <tr align="center">
                     <td height="25" align="center"><%=apartment_id %></td>
                     <td><%=dom_id %></td>
                     <td><%=stu_id %></td>
                     <td><%=stu_name %></td>
                     <td><%=major %></td>
                     <td align="center"></a></td>
                  </tr>
                </table>
			</td>
          </tr>
        </table>
	  </td>
     </tr>
      </table></td>
    </tr>   
  </table>
</center>
</body>
</html>
