<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
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
	text-decoration: blink;
}
    </style>
</head>
<body>
<div id="bg-pic">
<center>
   <br/>
     <br/>
      <br/>
	<h1 class="STYLE1">����Ա��½</h1>
	<hr>
	<br>
	<%
		if(session.getAttribute("uname")!=null)
		{
			// �û��ѵ�½
	%>
			<h2 class="STYLE1">��½�ɹ�</h2>
			<h2 class="STYLE1">��ӭ<font color="red" size="10">
				<%=session.getAttribute("uname")%>
			</font>��½</h2>
			<h3><a href="admin/personlist.jsp"><span class="STYLE1">���������Ϣ����ҳ��</span></a></h3>
			<h3><a href="admin/companylist.jsp"><span class="STYLE1">�����λ����Ϣ��ҳ��</span></a></h3>
			<h3><a href="admin/userlist.jsp"><span class="STYLE1">�����û���Ϣ����ҳ��</span></a></h3>
			<h3><a href="admin/web_notelist.jsp"><span class="STYLE1">����վ�񹫸����ҳ��</span></a></h3>
	<%
		}
		else
		{
			// �û�δ��½����ʾ�û���½������ת
			response.setHeader("refresh","5;URL=login.jsp") ;
	%>
			<h2 style="color:#FF0000;">����δ��½�����ȵ�½������<br>
			������Զ���ת����½���ڣ�����<br>
			���û����ת���밴<a style="color:#00FF00;" href="login.jsp">����</a>������</h2><br>
	<%
		}
	%>
</center>
</div>
</body>
</html>