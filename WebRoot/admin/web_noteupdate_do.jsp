<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
</head>
<body style="background-color:#9999CC;margin: 0;">
<div>
<center>
	<h1>ɾ����Ϣ��ʾ����</h1>
	<hr>
	<br>
	<%
		if(session.getAttribute("uname")!=null)
		{
			// �û��ѵ�½
	%>	
	<%
			response.setHeader("refresh","2;URL=web_notelist.jsp") ;
			boolean b = ((Boolean)request.getAttribute("flag")).booleanValue() ;
			if(b)
			{
				
	%>
				������³ɹ����������ת���б�ҳ������<br>
				���û����ת���밴<a href="web_notelist.jsp">����</a>������
	<%
			}
			else
			{
	%>
				���¹���ʧ�ܣ��������ת���б�ҳ������<br>
				���û����ת���밴<a href="web_notelist.jsp">����</a>������
	<%
			}
	%>
	<%
		}
		else
		{
			// �û�δ��½����ʾ�û���½������ת
			response.setHeader("refresh","2;URL=login.jsp") ;
	%>
			����δ��½�����ȵ�½������<br>
			������Զ���ת����½���ڣ�����<br>
	<%
		}
	%>
</center>
</div>
</body>
</html>