package com.servlet;

import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
import com.vo.* ;
import com.dao.factory.* ;

public class LoginServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		this.doPost(request,response) ;
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		String path = "login.jsp" ;
		// 1�����մ��ݵĲ���
		String name = request.getParameter("name") ;
		String password = request.getParameter("password") ;
		// 2������������ݸ�ֵ��VO��
		User person = new User() ;
		person.setName(name) ;
		person.setPassword(password) ;
		
		try
		{
			// �������ݿ���֤
			
			boolean b=DAOFactory.getUserDAOInstance().login(person);
			
			if(b)
			{
			System.out.print("111");
				// ���Ϊ�棬���ʾ�û�ID������Ϸ�
				// �����û�������session��Χ֮��
				request.getSession().setAttribute("uname",person.getName()) ;
				// �޸���ת·��
				path = "login_success.jsp" ;
			}
			else
			{
				// ��½ʧ��
				// ���ô�����Ϣ
				request.setAttribute("err","������û�ID�����룡����") ;
			}
		}
		catch(Exception e)
		{}

		request.getRequestDispatcher(path).forward(request,response) ;
	}
};
