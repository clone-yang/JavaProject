<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,com.db.DB3"%>
<%@ page import="java.util.*"%>
<%@ page import="com.vo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>网上招聘系统</title>
</head>
<body style="height:520px;">
	<div>
		<center><h2><font color="blue">个人信息预览</font></h2>
		<%
		if(session.getAttribute("uname")!=null)
		{
			// 用户已登陆
		%>
			<% 
				DB3 db=new DB3();
			%>
			<%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				String sql = "select * from person where name='"+(String) session.getAttribute("uname")+"'";
				System.out.println(sql);
				ResultSet rs=db.executeQuery(sql);
				
			 %>
			<%
		// 如果有内容，则修改变量i，如果没有，则根据i的值进行无内容提示
		int i = 0 ;
		//String keyword = request.getParameter("keyword") ;
		List all =new ArrayList() ;
		//all = (List)request.getAttribute("all") ;
	%>
	
	<%
					if(rs.next()) 
						{
					
						int id = rs.getInt("id");
						String name = rs.getString("name");
						String password = rs.getString("password");
						String realname = rs.getString("realname");
						String sex = rs.getString("sex");
						String nation = rs.getString("nation");
						String age = rs.getString("age");
						String marry = rs.getString("marry");
						String province=rs.getString("province");
						String education=rs.getString("education");
						String school = rs.getString("school");
						String edu_class = rs.getString("edu_class");
						String language = rs.getString("language");
						String lang_level = rs.getString("lang_level");
						String salary = rs.getString("salary");
						String phone = rs.getString("phone");
						String email = rs.getString("email");
						String address = rs.getString("address");
						String posts = rs.getString("posts");
						String job = rs.getString("job");
						String skills = rs.getString("skills");
						String experience = rs.getString("experience");
						String item_exp = rs.getString("item_exp");
						String introduce = rs.getString("introduce");
						String fileplace = rs.getString("fileplace");
						
						Note note= new Note() ;
						
						note.setId(rs.getInt(1)) ;
						note.setName(rs.getString(2)) ;
						note.setPassword(rs.getString(3)) ;
						note.setRealname(rs.getString(4)) ;
						note.setSex(rs.getString(5)) ;
						note.setNation(rs.getString(6)) ;
						note.setAge(rs.getString(7)) ;
						note.setMarry(rs.getString(8)) ;
						note.setProvince(rs.getString(9)) ;
						note.setEducation(rs.getString(10)) ;
						note.setSchool(rs.getString(11)) ;
						note.setEdu_class(rs.getString(12)) ;
						note.setLanguage(rs.getString(13)) ;
						note.setLang_level(rs.getString(14)) ;
						note.setSalary(rs.getString(15)) ;
						note.setPhone(rs.getString(16)) ;
						note.setEmail(rs.getString(17)) ;
						note.setAddress(rs.getString(18)) ;
						note.setPosts(rs.getString(19)) ;
						note.setJob(rs.getString(20)) ;
						note.setSkills(rs.getString(21)) ;
						note.setExperience(rs.getString(22)) ;
						note.setItem_exp(rs.getString(23)) ;
						note.setIntroduce(rs.getString(24)) ;
						note.setFileplace(rs.getString(25)) ;
						all.add(note) ;
						
				        }
		%>			
	<%
										Iterator iter = all.iterator() ;
										while(iter.hasNext())
										{
											 Note note= (Note)iter.next() ;
											i++ ;
											// 进行循环打印，打印出所有的内容，以表格形式
											// 从数据库中取出内容
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
			<% 
				if(realname==null){
			%>
			<center>
				<h2>还未填写相关信息，无法生成预览信息！</h2>
			</center>
			<%		
				}
			%>
			<% 							
			if(realname!=null){
			%>
			<table border="1" style="text-align: left;">
            <tr>
              <td colspan="4" bgcolor="#6600FF">个人信息</td>
            </tr>
            <tr>
              <td width="80">真实姓名：</td>
              <td width="150">
              <label>
                <%=realname %>
              </label></td>
              <td width="85">性 别：</td>
              <td width="167">
			  <label>
                <%=sex %>
              </label></td>
            </tr>
			<tr>
              <td>年 龄：</td>
              <td width="150"><label>
                <%=age %>
              </label></td>
              <td>名 族：</td>
              <td width="167"><label>
                <%=nation %>
              </label></td>
            </tr>
			<tr>
              <td>婚 否：</td>
              <td width="150"><label>
                <%=marry %>
              </label></td>
              <td>籍 贯：</td>
              <td width="167"><label>
                <%=province %>
              </label></td>
            </tr>
            <tr>
              <td>联系电话：</td>
              <td width="150"><label>
                <%=phone %>
              </label></td>
              <td width="85">电子邮件：</td>
              <td><label>
                <%=email %>
              </label></td>
            </tr>
             <tr>
              <td>联系地址：</td>
              <td width="150"><label>
                <%=address %>
              </label></td>
              <td>邮政编码：</td>
              <td width="167"><label>
                <%=posts %>
              </label></td>
            </tr>
            <tr>
              <td colspan="4" bgcolor="#6600FF">教育信息</td>
            </tr>
            <tr>
              <td>毕业学校：</td>
              <td width="150"><label>
                <%=school %>
              </label></td>
              <td>专业名称：</td>
              <td width="167"><label>
                <%=edu_class %>
              </label></td>
            </tr>
            <tr>
              <td>学历等级：</td>
              <td width="150"><label>
                <%=education %>
              </label></td>
              <td>外语语种：</td>
              <td width="167"><label>
                <%=language %>
              </label></td>
            </tr>
            <tr>
              <td>外语等级：</td>
              <td colspan="3"><label>
                <%=lang_level %>
              </label></td>
            </tr>
            <tr>
              <td colspan="4" bgcolor="#3366FF">求职信息</td>
            </tr>
            <tr>
              <td>应聘岗位：</td>
              <td width="150"><label>
                <%=job %>
              </label></td>
              <td>薪资要求：</td>
              <td width="167"><label>
                <%=salary %>
              </label></td>
            </tr>
            <tr>
              <td>职业技能：</td>
              <td colspan="3"><label></label>
              <label>
              <%=skills %>
              </label></td>
            </tr>
            <tr>
              <td>个人经历：</td>
              <td colspan="3"><label>
                <%=experience %>
              </label></td>
            </tr>
            <tr>
              <td>项目经验：</td>
              <td colspan="3"><label>
                <%=item_exp %>
              </label></td>
            </tr>
            <tr>
              <td>自我介绍：</td>
              <td colspan="3"><label>
                <%=introduce %>
              </label></td>
            </tr>
            <tr>
              <td>个性简历：</td>
              <td colspan="3"><label>
                <%
	           	if(fileplace!=null){
	           	%>
	           		<a href="DownloadFile?path=D:/&filename=<%=fileplace %>"><%=fileplace %></a>
	           	<%
	           	}
				else{
				%>
				未上传,更新可上传！
				<%
					}
				%>
              </label></td>
            </tr>
            </table>
			<br />
           	
         <%  
           	}
		 %>
		<%
		  }
		}
		else {
					// 用户未登陆，提示用户登陆，并跳转
			response.setHeader("refresh","5;URL=../index.jsp") ;
		%>
			<h2 style="color:#FF0000;">您还未登陆，请先登陆！！！<br>
			两秒后自动跳转到登陆窗口！！！<br>
			
			
			</h2><br>
			<% 
				}
			 %>
		</center>
	</div>
</body>
</html>



