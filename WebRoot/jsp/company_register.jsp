<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title></title>
	<script type="text/javascript">
	function signin_check()
	{
		var the_form=document.signin1;
		if (the_form.companyname.value=="") {
			alert("姓名不允许为空");
		} else if (the_form.companypassword.value=="") {
			alert("密码不允许为空");
		} else if (the_form.recompanypassword.value=="") {
			alert("重复密码不允许为空");
		} else if (the_form.password.value != the_form.recompanypassword.value) {
			alert("两次密码不一致，请重试。");
		} 
		else {
			the_form.submit();
		}
	}
	</script>
  </head>
  <body style="text-align:center;">
  		<h2 style="color: #ff3399;">以下内容带*为必填</h2>
		<form name="signin1" action="Note.tttt" method="post" onsubmit="return signin_check()">
		  <table width="325" height="101" border="0">
            <tr>
              <td width="108"><div align="center">用户名称：</div></td>
              <td width="207"><label>
                <input style="width:170px; height:20px;" name="companyname" type="text" >&nbsp;&nbsp;*
              </label></td>
            </tr>
            <tr>
              <td><div align="center">用户密码：</div></td>
              <td><label>
                <input style="width:170px; height:20px;" name="companypassword" type="password" >&nbsp;&nbsp;*
              </label></td>
            </tr>
            <tr>
              <td><div align="center">重复密码：</div></td>
              <td><label>
                <input style="width:170px; height:20px;" name="recompanypassword" type="password" >&nbsp;&nbsp;*
              </label></td>
            </tr>
            <tr>
              <td><div align="center">问题提示：</div></td>
              <td><label>
                <input style="width:170px; height:20px;" name="question" type="text" >
              </label></td>
            </tr>
            <tr>
              <td><div align="center">提示内容：</div></td>
              <td><label>
                <input style="width:170px; height:20px;" name="answer"  type="text">
              </label></td>
            </tr>
            <tr>
            	<td height="10px;"></td>
            </tr>
            <tr style="text-align: center;">
              <td colspan="2">
				<label>
                  <input type="hidden" name="status" value="companyinsert">
                  <input type="submit" value="以上信息以确定，我要注册">
				</label></td>
            </tr>
            <tr>
            	<td height="10px;"></td>
            </tr>
            <tr style="text-align: center;">
              <td colspan="2">
				<label>
                  <!--input type="reset"  value="某项有信息错误，清空重填"-->
				</label></td>
            </tr>
          </table>
		</form>
  </body>
</html>
