<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<%@ page import="com.vo.*"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
</head>
<body style="background-color:#9999CC;;margin: 0;">
<div>
<center>
	<h1>���Թ���</h1>
	<hr>
	<br>
	<%
		// ����ת��
		request.setCharacterEncoding("GB2312") ;
		if(session.getAttribute("uname")!=null)
		{
			// �û��ѵ�½
	%>
	<%
		// ��������ݣ����޸ı���i�����û�У������i��ֵ������������ʾ
		int i = 0 ;
		//String keyword = request.getParameter("yy") ;
		List all = null ;
		all = (List)request.getAttribute("all") ;
	%>
<form action="Note.tttt" method="POST">
	�������ѯ���ݣ�<input type="text" name="keyword">
	<input type="hidden" name="status" value="newsselectbylike">
	<input type="submit" value="��ѯ">
</form>
<table width="80%" border="1">
	<tr>
		<td>����ID</td>
		<td>��������</td>
		<td>��Ϣɾ��</td>
		<td>�޸ĸ���</td>
	</tr>
	<%
			Iterator iter = all.iterator() ;
			while(iter.hasNext())
			{
				 Note note = (Note)iter.next() ;
				i++ ;
				// ����ѭ����ӡ����ӡ�����е����ݣ��Ա����ʽ
				// �����ݿ���ȡ������
				int id = note.getId() ;
				String name = note.getName() ;
				
	%>
	
				<tr>
					<td><%=id %></td>
					<td><%=name %></td>
					<td><a href="Note.tttt?id=<%=id%>&status=newsdelete">��Ϣɾ��</a></td>
					<td><a href="Note.tttt?id=<%=id%>&status=newsselectid">�޸ĸ���</a></td>
				</tr>
				
				
	<%
			}
			// �ж�i��ֵ�Ƿ�ı䣬����ı䣬���ʾ�����ݣ���֮��������
			if(i==0)
			{
				// ������ʾ
	%>
				<tr>
					<td colspan="5">û���κ����ݣ�����</td>
				</tr>
	<%
			}
	%>
	</table>
		<h3><a href="web_notelist.jsp">�ص������б�ҳ</a></h3>
	<%
		}
		else
		{
			// �û�δ��½����ʾ�û���½������ת
			response.setHeader("refresh","2;URL=../login.jsp") ;
	%>
			����δ��½�����ȵ�½������<br>
			������Զ���ת����½���ڣ�����<br>
			���û����ת���밴<a href="../login.jsp">����</a>������<br>
	<%
		}
	%>
</center>
</div>
</body>
</html>