<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,com.db.DB3"%>
<%@ page import="com.vo.*"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
</head>
<body style="background-color:#3366FF;margin: 0;padding-left: 15px;">
<div>
<center>
	<h1>������Ϣ</h1>
	<hr>
	<br>
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
		List all = null;
		//List all =new ArrayList() ;
		all = (List)request.getAttribute("all") ;
	%>
	<%
										Iterator iter = all.iterator() ;
										while(iter.hasNext())
										{
											 Note note= (Note)iter.next() ;
											i++ ;
											// ����ѭ����ӡ����ӡ�����е����ݣ��Ա����ʽ
											// �����ݿ���ȡ������
											int id = note.getId() ;
											String name= note.getName() ;
											String password= note.getPassword() ;
											String realname = note.getRealname();
											String sex = note.getSex();
											String nation = note.getNation() ;
											String age = note.getAge() ;
											String marry = note.getMarry();
											String province = note.getProvince();
											String education = note.getEducation();
											String school = note.getSchool();
											String edu_class = note.getEdu_class();
											String language = note.getLanguage();
											String lang_level = note.getLang_level();
											String salary = note.getSalary();
											String phone=note.getPhone();
											String email=note.getEmail();
											String address=note.getAddress();
											String posts = note.getPosts();
											String  job =note.getJob();
											String skills =note.getSkills();
											String experience = note.getExperience();
											String item_exp=note.getItem_exp();
											String introduce = note.getIntroduce();
											String fileplace = note.getFileplace();
											
									%>
	
				<table border="1">
            <tr>
              <td colspan="4" bgcolor="#6600FF">������Ϣ</td>
            </tr>
            <tr>
              <td width="80">��ʵ������</td>
              <td width="150">
              <label>
                <%=realname %>
              </label></td>
              <td width="85">�� ��</td>
              <td width="167">
			  <label>
                <%=sex %>
              </label></td>
            </tr>
			<tr>
              <td>�� �䣺</td>
              <td width="150"><label>
                <%=age %>
              </label></td>
              <td>�� �壺</td>
              <td width="167"><label>
                <%=nation %>
              </label></td>
            </tr>
			<tr>
              <td>�� ��</td>
              <td width="150"><label>
                <%=marry %>
              </label></td>
              <td>�� �᣺</td>
              <td width="167"><label>
                <%=province %>
              </label></td>
            </tr>
            <tr>
              <td>��ϵ�绰��</td>
              <td width="150"><label>
                <%=phone %>
              </label></td>
              <td width="85">�����ʼ���</td>
              <td><label>
                <%=email %>
              </label></td>
            </tr>
             <tr>
              <td>��ϵ��ַ��</td>
              <td width="150"><label>
                <%=address %>
              </label></td>
              <td>�������룺</td>
              <td width="167"><label>
                <%=posts %>
              </label></td>
            </tr>
            <tr>
              <td colspan="4" bgcolor="#6600FF">������Ϣ</td>
            </tr>
            <tr>
              <td>��ҵѧУ��</td>
              <td width="150"><label>
                <%=school %>
              </label></td>
              <td>רҵ���ƣ�</td>
              <td width="167"><label>
                <%=edu_class %>
              </label></td>
            </tr>
            <tr>
              <td>ѧ���ȼ���</td>
              <td width="150"><label>
                <%=education %>
              </label></td>
              <td>�������֣�</td>
              <td width="167"><label>
                <%=language %>
              </label></td>
            </tr>
            <tr>
              <td>����ȼ���</td>
              <td colspan="3"><label>
                <%=lang_level %>
              </label></td>
            </tr>
            <tr>
              <td colspan="4" bgcolor="#3366FF">��ְ��Ϣ</td>
            </tr>
            <tr>
              <td>ӦƸ��λ��</td>
              <td width="150"><label>
                <%=job %>
              </label></td>
              <td>н��Ҫ��</td>
              <td width="167"><label>
                <%=salary %>
              </label></td>
            </tr>
            <tr>
              <td>ְҵ���ܣ�</td>
              <td colspan="3"><label></label>
              <label>
              <%=skills %>
              </label></td>
            </tr>
            <tr>
              <td>���˾�����</td>
              <td colspan="3"><label>
                <%=experience %>
              </label></td>
            </tr>
            <tr>
              <td>��Ŀ���飺</td>
              <td colspan="3"><label>
                <%=item_exp %>
              </label></td>
            </tr>
            <tr>
              <td>���ҽ��ܣ�</td>
              <td colspan="3"><label>
                <%=introduce %>
              </label></td>
            </tr>
            <tr>
              <td>���Լ�����</td>
              <td colspan="3"><label>
                <%
	           	if(fileplace!=null){
	           	%>
	           		<a href="DownloadFile?path=D:/&filename=<%=fileplace %>"><%=fileplace %></a>
	           	<%
	           	}
				else{
				%>
				<h2 style="color: red;">δ�ϴ���</h2>
				<%
					}
				%>
              </label></td>
            </tr>
				<%		
										}
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