<%@ page language="java" contentType="text/html;charset=utf-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题文档</title>
<link href="yangshi.css" rel="stylesheet" type="text/css" />
</head>
<body >
<form name="form1" method="post" action="BudAdd.jsp" >
<table width="100%">
 <tr><td background="Images/mainMenuBg.jpg" style="padding-left:25px;" target="right">添加公寓</td></tr>
 <tr>
     <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
       
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>名称：</td>
                    <td><input name="Building_Name" type="text" class="text2" id="Building_Name"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">简介：</td>
                    <td><textarea name="Building_Introduction" id="Building_Introduction" cols="45" rows="5"></textarea></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="添加公寓">
                      &nbsp;&nbsp;
                      <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                  </tr>
                </table>
         </td>
    </tr>
</table>
</form>

</body>
</html>
