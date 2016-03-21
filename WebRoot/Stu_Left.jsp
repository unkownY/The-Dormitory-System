<%@page language="java"  contentType="text/html;charset=utf-8"%>
<!doctype html>
<html>
 <head>
  <title>宿舍管理系统</title>
  <style type="text/css">
    a{
	    text-decoration:none;
	}

  </style>
 </head>
 <body background="Images/index_picture.jpg">
 	<br>
    <table >
	  <tr>
          <td height="31" align="center" background="Images/left1.jpg"><strong>系统选项</strong></td>
	  </tr>
	  <tr>
          <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
      </tr>
	  <tr>
          <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
		  <a href="Student_Info.jsp" target="right">个人信息</a></td>
      </tr>
      <tr>
          <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
      </tr>
      <tr>
          <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
		  <a href="Password_Update.html" target="right">&nbsp;修改密码 &nbsp;</a></td>
      </tr>
       <tr>
          <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
      </tr>
	  <tr>
          <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
		  <a href="login.jsp" target="big" onclick="return confirm('确定要退出系统吗？')">&nbsp;退出系统</a></td>
      </tr>
	</table>
 </body>
</html>