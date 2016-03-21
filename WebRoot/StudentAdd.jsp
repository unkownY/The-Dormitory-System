<%@ page language="java" contentType="text/html;charset=utf-8" %>


<html>
<head>
<title>宿舍管理系统</title>
<link href="yangshi.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form name="form1" method="post" action="StuAdd.jsp" onSubmit="return mycheck()" >
   <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
        <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">添加学生</td>
      </tr>
      <tr>
         <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
            
               <table width="0" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="40%" height="30" align="right">&nbsp;</td>
                    <td width="60%">&nbsp;</td>
                  </tr>
                  <tr>
                     <td height="30" align="right"><span style="color:red;">*</span>学号：</td>
                     <td><input name="Student_Username" type="text" style="width:200px" class="text2" id="Student_Username" /></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>姓名：</td>
                    <td><input name="Student_Name" type="text" style="width:200px" class="text2" id="Student_Name"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>性别：</td>
                    <td><select name="Student_Gender" id="Student_Gender">
                      <option value="">请选择</option>
                      <option value="男">男</option>
                      <option value="女">女</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>专业：</td>
                    <td><input name="Major" type="text" style="width:200px" class="text2" id="Major"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>公寓号：</td>
                    <td><input name="Apart" type="text" style="width:200px" class="text2" id="Apart"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>宿舍号：</td>
                    <td><input name="Dom" type="text" style="width:200px" class="text2" id="Dom"></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="添加学生">
                      &nbsp;&nbsp;
                      <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                  </tr>
        </table>
        </td></tr>
        </table>
        </form>
    
</body>
</html>
