<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
</head>
<body style="background-color:#CCCCCC;margin: 0;">
<div>
<center>
	<h1>������Ϣ��ʾ����</h1>
	<hr>
	<br>
	<%
		if(session.getAttribute("uname")!=null)
		{
			// �û��ѵ�½
	%>	
	<%
			//response.setHeader("refresh","2;URL=company.jsp") ;
			
			boolean b = ((Boolean)request.getAttribute("flag")).booleanValue() ;
			if(b)
			{
				
	%>
				��λ��Ϣ���³ɹ��������Խ���������ز�����
				
	<%
			}
			else
			{
	%>
				������Ϣ����ʧ�ܣ������ԣ�����<br>
				
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
	<%
		}
	%>
</center>
</div>
</body>
</html>