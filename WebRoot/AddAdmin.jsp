<%@ page language="java" contentType="text/html;charset=utf-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>公寓管理员</title>
<link href="yangshi.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form name="form1" method="post" action="AparterAdd.jsp" >
<table width="100%">
    <tr><td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;" target="right">添加公寓管理员      </td>
    </tr>
    <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>编号：</td>
                    <td><input name="aparter_ID" type="text" style="width:200px" class="text2" id="aparter_ID"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>姓名：</td>
                    <td><input name="aparter_NAME" type="text" style="width:200px" class="text2" id="aparter_NAME"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>性别：</td>
                    <td><select name="aparter_gender" id="aparter_gender">
                      <option value="">请选择</option>
                      <option value="男">男</option>
                      <option value="女">女</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>负责公寓：</td>
                    <td><input name="apartID" type="text" style="width:200px" class="text2" id="apartID"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>联系电话：</td>
                    <td><input name="phone" type="text" style="width:200px" class="text2" id="phone"></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="添加楼宇管理员">
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
