<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<%@ page import="com.vo.*"%>
<%@ page import="java.sql.*,com.db.DB3"%>
<html>
<head>
	<title>������Ƹϵͳ</title>
</head>
<body style="background-color:#9999CC;margin: 0;">
<div>
<center>
	<h1>������Ϣ����</h1>
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
				String jspUrl= "select_personlist.jsp";
	%>	
	<% 
				int lineSize =1;
				int currentPage = 1;
				//�����ܵļ�¼��
				int allRecorders;
				//�����ܵ�ҳ��
				int pageSize;
	%>
	<% 
				try 
				{
					String cp = request.getParameter("cp");
					currentPage = Integer.parseInt(cp);
				}
				catch(Exception e) 
				{
				}		
	%>
	<% 
				DB3 db=new DB3();
	%>
	<%
				request.setCharacterEncoding("gbk");
				response.setCharacterEncoding("gbk");
				String keyword = request.getParameter("keyword");
				System.out.println("keyword="+keyword);
				String sql2 = "SELECT * FROM person WHERE name LIKE '"+"%"+keyword+"%"+"' or realname LIKE '"+"%"+keyword+"%"+"' or province LIKE '"+"%"+keyword+"%"+"'"+ 
				" or education LIKE '"+"%"+keyword+"%"+"' or school LIKE '"+"%"+keyword+"%"+"' or edu_class LIKE '"+"%"+keyword+"%"+"' or language LIKE '"+"%"+keyword+"%"+"' or lang_level LIKE '"+"%"+keyword+"%"+"' or salary LIKE '"+"%"+keyword+"%"+"' or phone LIKE '"+"%"+keyword+"%"+"'" +
				" or email LIKE '"+"%"+keyword+"%"+"' or address LIKE '"+"%"+keyword+"%"+"' or posts LIKE '"+"%"+keyword+"%"+"' or job LIKE '"+"%"+keyword+"%"+"' or skills LIKE '"+"%"+keyword+"%"+"' or experience LIKE '"+"%"+keyword+"%"+"' or item_exp LIKE '"+"%"+keyword+"%"+"'" +
				" or introduce LIKE '"+"%"+keyword+"%"+"'" ;
				ResultSet rs=db.executeQuery(sql2);
				rs.last();
				allRecorders=rs.getRow();
				System.out.println("allrecorders="+allRecorders);
				pageSize=(allRecorders+lineSize-1)/lineSize;
	%>
	<%
		// ��������ݣ����޸ı���i�����û�У������i��ֵ������������ʾ
		int i = 0 ;
		//String keyword = request.getParameter("yy") ;
		List all = null ;
		all = (List)request.getAttribute("all") ;
	%>
	<form name="pag" action="<%=jspUrl%>" >
				<input type="button" value="��ҳ" onClick="openPage(1)" <%=currentPage==1?"disabled":""%>/>
				<input type="button" value="��һҳ" onClick="openPage(<%=currentPage-1 %>)"<%=currentPage==1?"disabled":""%>/>
				<input type="button" value="��һҳ" onClick="openPage(<%=currentPage+1 %>)"<%=currentPage==pageSize?"disabled":""%>/>
				<input type="button" value="βҳ" onClick="openPage(<%=(allRecorders+lineSize-1)/lineSize %>)" <%=currentPage==pageSize?"disabled":""%>/>
				
				<input type="hidden" name="cp" value="" />
				<font color="red" size="5"><%=currentPage %></font>
				 / <font color=��red�� size=��5��><%=pageSize %></font>
						 ��ת��:<select name="selpage" onChange="selOpenPage()">
							<% 
								for(int x=1; x<=pageSize; x++) {
							%>
								<option value="<%=x %>" <%=currentPage==x?"selected":"" %>><%=x %></option>
							<% 
								}
							%>
					   </select>
	</form>
	<%
			Iterator iter = all.iterator() ;
			while(iter.hasNext())
			{
				 Note note = (Note)iter.next() ;
				i++ ;
				
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
				
			%>
			<%
					
					// �ж�i��ֵ�Ƿ�ı䣬����ı䣬���ʾ�����ݣ���֮��������
					if(i==0)
					{
						// ������ʾ
			%>
				<h3>û���κ����ݣ�����</h3>
			<%
					}
			%>
				
			<table border="1" style="text-align: left;">
			<tr>
			  <td bgcolor="#6600FF">��ţ�</td>
              <td colspan="3" style="text-align: center;"><%=id %></td>
            </tr>
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
              <td>ɾ��������</td>
              <td colspan="3"><label>
                <a href="Note.tttt?id=<%=id %>&status=persondelete">ɾ��</a>
              </label></td>
            </tr>
            <tr>
              <td>�޸Ĳ�����</td>
              <td colspan="3"><label>
                <a href="Note.tttt?id=<%=id %>&status=personselectid">�޸�</a>
              </label></td>
            </tr>
			</table>
			<h3><a href="personlist.jsp">�ص�������Ϣ�б�ҳ</a></h3>
	<%
			}
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