<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,com.db.DB3"%>
<%@ page import="com.vo.*"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
</head>
<body style="background-color:#3366FF;margin: 0;padding-left: 10px;">
<div>
<center>
	<br>
	<h1>��Ƹ��Ϣ</h1>
		<%
			// ����ת��
			request.setCharacterEncoding("utf-8") ;
			if(session.getAttribute("uname")!=null)
			{
				
		%>
			
			<%
		// ��������ݣ����޸ı���i�����û�У������i��ֵ������������ʾ
		int i = 0 ;
		//String keyword = request.getParameter("keyword") ;
		List all =new ArrayList() ;
		all = (List)request.getAttribute("all") ;
	%>
	<%
									Iterator iter = all.iterator() ;
									while(iter.hasNext())
									{
										 Note note = (Note)iter.next() ;
										i++ ;
										// ����ѭ����ӡ����ӡ�����е����ݣ��Ա����ʽ
										// �����ݿ���ȡ������
										int id = note.getId() ;
										String name= note.getCompanyname() ;
										String fullname = note.getFullname();
										String property = note.getProperty() ;
										String place = note.getPlace();
										String trade = note.getTrade();
										String positionname = note.getPositionname();
										String number = note.getNumber();
										String education = note.getEducation();
										String description = note.getDescription();
										String info =note.getInfo();
										String companyaddress=note.getCompanyaddress();
										String web=note.getWeb();
										String contact = note.getContact();
										String phone=note.getPhone();
										String companyemail=note.getCompanyemail();

				%>
					
			<table width="548" height="425" border="1">
            <tr>
              <td colspan="4" bgcolor="#666699">��˾��Ϣ</td>
            </tr>
            <tr>
              <td width="83">��ҵȫ�ƣ�</td>
              <td colspan="3"><label>
                <%=fullname %>
              </label></td>
            </tr>
            <tr>
              <td height="23">��ҵ���ʣ�</td>
              <td colspan="3"><label>
              <%=property %>
              </label></td>
			  </tr>
			  <tr>
              <td width="83">��ҵְ�ƣ�</td>
              <td colspan="3"><label>
                <%=trade %>
              </label></td>
            </tr>

            <tr>
              <td>��˾���ܣ�</td>
              <td colspan="3"><label>
                <%=info %>
              </label></td>
            </tr>
            <tr>
              <td>���ڳ��У�</td>
              <td width="449"><label>
                <%=place %>
              </label></td>
			  </tr>
			  <tr>
              <td width="83">��ϵ�ˣ�</td>
              <td width="449" colspan="3"><label>
                <%=contact %>
              </label></td>
            </tr>
            <tr>
              <td>��˾�ʼ���</td>
              <td><label>
                <%=companyemail %>
              </label></td>
			  </tr>
			  <tr>
              <td>��ϵ�绰��</td>
              <td><label>
                <%=phone %>
              </label></td>
            </tr>
            <tr>
              <td>��˾��ַ��</td>
              <td colspan="3"><label>
                <%=web %>
              </label>
                <label></label></td>
            </tr>
            <tr>
              <td>��˾��ַ��</td>
              <td colspan="3"><label>
                <%=companyaddress %>
              </label></td>
            </tr>
            <tr>
              <td colspan="4" bgcolor="#6666CC">��λ��Ϣ</td>
            </tr>
            <tr>
              <td>��λ���ƣ�</td>
              <td colspan="3"><label>
                <%=positionname %>
              </label></td>
            </tr>
            <tr>
              <td>��Ƹ������</td>
              <td colspan="3"><label>
                <%=number %>
              </label>                <label></label></td>
            </tr>
            <tr>
              <td>ѧ��Ҫ��</td>
              <td colspan="3"><label>
                <%=education %>
              </label></td>
            </tr>
            <tr>
              <td>ְλ������</td>
              <td colspan="3"><label>
                <%=description %>
              </label></td>
            </tr>
				
				<%
						}
						// �ж�i��ֵ�Ƿ�ı䣬����ı䣬���ʾ�����ݣ���֮��������
				%>
				<br/>
				<br/>
					<%		
							// �ж�i��ֵ�Ƿ�ı䣬����ı䣬���ʾ�����ݣ���֮��������
							if(i==0)
							{
								// ������ʾ
					%>
								<tr>
									<td colspan="5">û���ҵ�������Ҫ������ݣ�</td>
								</tr>
					<%
							}
					%>
			</table>
				<br>
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