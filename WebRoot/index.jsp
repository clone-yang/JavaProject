<%@ page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*,com.db.DB3"%>
<%@ page import="java.util.*"%>
<%@ page import="com.vo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>������Ƹϵͳ��ҳ</title>
		<link href="css/index.css" rel="stylesheet" type="text/css" />
	</head>
	<body style="text-align: center;">
		<div id="contion">	
			<div id="top">
				<%@ include file="head.jsp" %>
			</div>
			<div id="sec">			
				<div id="sec_right">
					<iframe frameborder="0" style="width:200px;height:165px;" src="jsp/web_note.jsp">					
					</iframe>
				</div>
				<div id="sec_left">				
				</div>
			</div>
			<div id="third">
				<div id="third1">
					<div style="width:202px; height:30px; background-image:url(pic/log.jpg);"></div>					
						<div style="width:202px; height:225px; text-align: left; background-color: #10301;">
							  <form id="form1" method="post" action="Login2.tttt" style="padding-left: 10px;">
							  		<br />
							    	�û���<input type="text" name="name" style="height: 15px;width: 120px;"  /><br /><br/>
							    	���룺<input type="password" name="password" style="height: 15px;width: 120px;" /><br /><br/>
							    	��� <select name="status">
				    						<option value="personal">�����˻�</option>
				    						<option value="company">��˾�˻�</option>
										</select><br/><br/>
									<center>
										<input type="submit" value="��¼" />&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="reset"  value="����" /><br/>
									</center>
                              </form>
                              <div style="font-size: 15px;text-align: center;">
                              		<a href="jsp/person_register.jsp" style="color: #F10301;">������ע�᡿</a>
                              		<a href="jsp/company_register.jsp" style="color: #F10301;">����ҵע�᡿</a>
                              </div>
                              <div style="height: 15px;"></div>
						</div>
						<div style="background-color:#000000; height: 150px;background-image: url(pic/x.jpg);"></div>
				</div>
				<div id="third2">
					<div style="height: 25px; background-color: #10301;">
						<div style="padding-top: 0px;">�����˲���Ϣ</div>
					</div>
					<div style="height:170px;">
						<div style="width:760px; height:170px; background-color:#10301;">
							<%@ include file="jsp/index_person.jsp" %>		
						</div>
					</div>
					<div style="width: 760px; height: 25px; background-color: #10301;">
						<div style="padding-top: 0px;">������Ƹ��Ϣ</div>
					</div>
					<div style="height:170px;">
						<div style="float:left; height:170px; background-color:#10301;">
							<iframe style="width: 760px; height:175px; background-color:#10301;" frameborder="0" scrolling="no" src="jsp/index_company.jsp">
							</iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>
