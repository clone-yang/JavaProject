<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.db.DB3"%>
<%@ page import="java.util.*"%>
<%@ page import="com.vo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index_company.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="width:760px; height:170px; background-color:#10301;margin: 0px;padding: 0px;">
   									<%
   										DB3 db = new DB3();
   									%>
   									 <%
										request.setCharacterEncoding("utf-8");
										response.setCharacterEncoding("utf-8");
										String sql3 = "select * from company order by id desc";
										ResultSet rs=db.executeQuery(sql3);
									 %>
									<%
										// ��������ݣ����޸ı���i�����û�У������i��ֵ������������ʾ
										int i = 0;
										List all =new ArrayList() ;
										//all = (List)request.getAttribute("all") ;
									%>
										
									<table width="100%" style="border-style:groove;text-align: center;" border="1">
									<tr>
										<td>��ҵ���Ƴ�</td>
										<td>��Ƹ��λ</td>
										<td>רҵҪ��</td>
										<td>ѧ��Ҫ��</td>
									</tr>
							
									<% 				
										for(int j=0; j<6;j++) {		
											if(rs.next()) 
												{
											
											    int id = rs.getInt("id");
												String name = rs.getString("companyname");
												String fullname = rs.getString("fullname");
												String property = rs.getString("property");
												String place=rs.getString("place");
												String trade=rs.getString("trade");
												String positionname = rs.getString("positionname");
												String number = rs.getString("number");
												String education = rs.getString("education");
												String edu_class = rs.getString("edu_class");
												String description = rs.getString("description");
												String info = rs.getString("info");
												String companyaddress = rs.getString("companyaddress");
												String web = rs.getString("web");
												String contact = rs.getString("contact");
												String phone = rs.getString("phone");
												String companyemail = rs.getString("companyemail");
												
												
										
												Note note= new Note() ;
												note.setId(rs.getInt(1)) ;
												note.setCompanyname(rs.getString(2)) ;
												note.setFullname(rs.getString(4)) ;
												note.setProperty(rs.getString(5)) ;
												note.setPlace(rs.getString(6)) ;
												note.setTrade(rs.getString(7)) ;
												note.setPositionname(rs.getString(8)) ;
												note.setNumber(rs.getString(9)) ;
												note.setEducation(rs.getString(10)) ;
												note.setEdu_class(rs.getString(11)) ;
												note.setDescription(rs.getString(12)) ;
												note.setInfo(rs.getString(13)) ;
												note.setCompanyaddress(rs.getString(14)) ;
												note.setWeb(rs.getString(15)) ;
												note.setContact(rs.getString(16)) ;
												note.setPhone(rs.getString(17)) ;
												note.setCompanyemail(rs.getString(18)) ;
										
										
										all.add(note) ;
										
								        }
											}
											 %>			
									
							
							
									<%
											Iterator iter2 = all.iterator() ;
											while(iter2.hasNext())
											{
												 Note note1 = (Note)iter2.next() ;
														i++ ;
												// ����ѭ����ӡ����ӡ�����е����ݣ��Ա����ʽ
												// �����ݿ���ȡ������
											int id = note1.getId() ;
											String name= note1.getCompanyname() ;
											String fullname = note1.getFullname();
											String property = note1.getProperty() ;
											String place = note1.getPlace();
											String trade = note1.getTrade();
											String positionname = note1.getPositionname();
											String number = note1.getNumber();
											String education = note1.getEducation();
											String edu_class = note1.getEdu_class();
											String description = note1.getDescription();
											String info =note1.getInfo();
											String companyaddress=note1.getCompanyaddress();
											String web=note1.getWeb();
											String contact = note1.getContact();
											String phone=note1.getPhone();
											String companyemail=note1.getCompanyemail();
										
										
									%>
							
										<tr>
											<td><%=fullname %></td>
											<td><%=positionname %></td>
											<td><%=education %></td>
											<td><%=edu_class %></td>
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
  </body>
</html>
