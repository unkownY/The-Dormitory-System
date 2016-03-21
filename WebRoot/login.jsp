<%@ page language="java" import="java.util.*,stu_admin_login.*" pageEncoding="utf-8"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>校园宿舍管理系统</title>
  <link href="Style/Style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<script language="JavaScript">

function mycheck(){
   if(isNull(form1.Type.value)){  
   alert("请选择身份！"); 
   return false;
   }
   if(isNull(form1.Username.value)){  
   alert("请输入学号！"); 
   return false;
   }
   if(isNull(form1.Password.value)){
   alert("请输入密码！");
   return false;
   }
      
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}

</script>
<body>
<center>
  <br><br><br><br><br>
  <table width="684" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="292" align="center" valign="top" background="Images/login_ico.jpg">
      <table width="350" height="201" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="72" align="center"><h3>校园宿舍管理系统</h3></td>
        </tr>
        <tr>
          <td align="center" valign="top">
             <form name="form1" action="stu_admin_login.jsp" method="post" onSubmit="return mycheck()">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" colspan="2" align="center" class="STYLE2"><span style="color:red;">
                  </span></td>
                  </tr>
                <tr>
                  <td height="30" align="right" class="STYLE2">身&nbsp;&nbsp;&nbsp;&nbsp;份：</td>
                  <td align="left"><select name="Type" id="Type">
                    <option value="">请选择</option>
                    <option value="管理员">管理员</option>
                    <option value="学生">学生</option>
                  </select></td>
                  </tr>
                <tr>
                  <td width="37%" height="30" align="right" class="STYLE2">用户名：</td>
                  <td width="300" align="left"><input type="text" style="width:180px" name="Username" id="Username" class="text1" /></td>
                  </tr>
                <tr>
                  <td height="30" align="right" class="STYLE2">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                  <td align="left"><input type="password" style="width:180px" name="Psd" id="Psd" class="text1" /></td>
                  </tr>
                <tr>
                  <td height="30" colspan="2" align="center"><label>
                    <input type="submit" name="button" id="button" value="登录">
                  </label></td>
                  </tr>
              </table>
              </form>
          
          </td>
        </tr>
      </table></td>
    </tr>
  </table>

</center>
</body>
</html>
