<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
</head>
<body style="background-color:#CCCCCC;">
<div>
<center>
	<h1>�û�����</h1>
	<hr>
	<br>
	<%
		// �������봦��
		request.setCharacterEncoding("GB2312") ;
	%>
	<%
		if(session.getAttribute("uname")!=null)
		{
			// �û��ѵ�½
	%>
	<%
			response.setHeader("refresh","5;URL=../index.jsp") ;
			boolean b = ((Boolean)request.getAttribute("flag")).booleanValue() ;
			if(b)
			{
	%>
				<h3 style="color: red">��ϲ��ע��ɹ���</h3><p>�������ת����ҳ�������µ�¼������ز���������</p>
				<p>���û����ת���밴<a href="../index.jsp">����</a>������
	<%
			}
			else
			{
	%>
				<h2>�û�ע��ʧ�ܣ�����ע��������������ϸ�������ѡ��</h2>
				�������ת����ҳ�������û����ת���밴<a href="../index.jsp">����</a>������
	<%
			}
	%>
	<%
		}
		else
		{
			// �û�δ��½����ʾ�û���½������ת
			response.setHeader("refresh","2;URL=../index.jsp") ;
	%>
			����δ��½�����ȵ�½������<br>
			������Զ���ת����½���ڣ�����<br>
			���û����ת���밴<a href="../index.jsp">����</a>������<br>
	<%
		}
	%>
</center>
</div>
</body>
</html>


