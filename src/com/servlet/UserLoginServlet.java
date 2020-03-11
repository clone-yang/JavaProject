package com.servlet;

import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
import javax.swing.JOptionPane;

import com.vo.* ;
import com.dao.factory.* ;




public class UserLoginServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		this.doPost(request,response) ;
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		String path = "index.jsp" ;
		String status = request.getParameter("status") ;
		if("personal".equals(status))
		{
			
			
			String name = request.getParameter("name") ;
			String password = request.getParameter("password") ;
			// 2������������ݸ�ֵ��VO��
			Note note = new Note() ;
			note.setName(name) ;
			note.setPassword(password) ;
			System.out.println(name);
			System.out.println(password);
			
			try
			{
				// �������ݿ���֤
				//System.out.print("111");
				boolean b=DAOFactory.getNoteDAOInstance().login(note);
				System.out.println(b);
				
				if(b)
				{
					// ���Ϊ�棬���ʾ�û�ID������Ϸ�
					// �����û�������session��Χ֮��
					request.getSession().setAttribute("uname",note.getName()) ;
					// �޸���ת·��
					path = "jsp/person.jsp" ;
				}
				else
				{
					// ��½ʧ��
					// ���ô�����Ϣ
					//path="jsp/login_error.jsp";
					//request.setAttribute("index","������û�ID�����룡����") ;
					JOptionPane.showMessageDialog(null, "�û������������������ϸ�˶Ժ����µ�¼��");
				}
			}
			catch(Exception e)
			{}

			request.getRequestDispatcher(path).forward(request,response) ;
			
		}
		else
		{
			
			String companyname = request.getParameter("name") ;
			String companypassword = request.getParameter("password") ;
			// 2������������ݸ�ֵ��VO��
			Note note = new Note() ;
			note.setCompanyname(companyname) ;
			note.setCompanypassword(companypassword) ;
			System.out.println(companyname);
			System.out.println(companypassword);
			
			try
			{
				// �������ݿ���֤
				System.out.println("999");
				boolean b=DAOFactory.getNoteDAOInstance().companylogin(note);
				System.out.println(b);
				
				if(b)
				{
				System.out.println("369");
					// ���Ϊ�棬���ʾ�û�ID������Ϸ�
					// �����û�������session��Χ֮��
					request.getSession().setAttribute("uname",note.getCompanyname()) ;
					companyname =note.getCompanyname();
					companypassword =note.getCompanypassword();
					//System.out.println(companyname);
					// �޸���ת·��
					path = "jsp/company.jsp" ;
				}
				else
				{
					// ��½ʧ��
					// ���ô�����Ϣ
					JOptionPane.showMessageDialog(null, "�û������������������ϸ�˶Ժ����µ�¼��");
					//request.setAttribute("index","������û�ID�����룡����") ;
				}
			}
			catch(Exception e)
			{}

			request.getRequestDispatcher(path).forward(request,response) ;
			
		}
	}
	
	
	
};
