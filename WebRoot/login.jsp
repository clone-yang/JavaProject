<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title> ��Ƹϵͳ��̨</title>
	<style>
	   html,body
	   {
	     margin:0px;
	     padding:0px;
		 text-align:center;
	   }
	   #bg-pic
	   {
	     background:url(pic/lg.jpg) no-repeat;
		 width:1000px;
		 height:692px;
	   }
	.STYLE1 {
	color: #00CCFF;
	font-weight: bold;
}
    </style>
</head>
<body>
<div id="bg-pic">
<center>
    <br/>
     <br/>
      <br/>
	<h1 class="STYLE1">������Ƹϵͳ<br/><br/>����Ա��½</h1>
	<hr>
	<br>
	<%
		// �ж��Ƿ��д�����Ϣ����������ӡ
		// ���û�д˶δ��룬����ʾʱ��ֱ�Ӵ�ӡnull
		if(request.getAttribute("err")!=null)
		{
	%>
			<h2 class="STYLE1"><%=request.getAttribute("err")%></h2>
	<%
		}
	%>
	<br/>
     <br/>
	 
	<form action="Login.tttt" method="post">

	<table width="80%">
	
	<tr>
		<td><div align="right" class="STYLE1" >&nbsp;&nbsp;&nbsp;�û�����</div></td>
		<td>
		  <div align="left" >
		    <input name="name" type="text" size="21" >
	      </div></td>
	</tr>
	
	<tr>
		<td><div align="right" class="STYLE1">&nbsp;&nbsp;&nbsp;�� �룺</div></td>
		<td>
		  <div align="left" >
		    <input name="password" type="password" size="22" >
	      </div></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<div align="center">
			<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
			 <input type="submit" value="��½">
			  <input type="reset" value="����">
	        </div></td>
	</tr>
	</table>
	</form>
</center>
</div>
</body>
</html>