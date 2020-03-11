package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JOptionPane;

public class DB3 
{	
		 public Connection con=null;
		 Statement stmt=null;
		 ResultSet rs=null;
		 int rn=0;
		String url="jdbc:mysql://localhost:3306/job?user=root&password=123456&useUnicode=true&characterEncoding=8859_1&characterEncoding=UTF-8";
		public DB3()
		{
			//1 ��������
			try 
			{
				Class.forName("org.gjt.mm.mysql.Driver").newInstance();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "��������ʵ�����쳣");
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "�Ƿ����ʲ����쳣");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "�������Ҳ����쳣");
			}
			//2 �������
			try 
			{
				con=DriverManager.getConnection(url);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "�����쳣");
			}
			//3 �������ִ����
			try 
			{
				stmt=con.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "���ִ��������쳣");
			}
		}
		//4 ������
		  //4-1 ��ѯ��
		public ResultSet executeQuery(String sql)
		{
			try 
			{
				rs=stmt.executeQuery(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null,"��ѯ���ִ���쳣");
				rs=null;
			}
			return rs;
		}
			//4-2 ������
		public int executeUpdate(String sql)
		{
			try 
			{
				rn=stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null,"�������ִ���쳣");
				rn=0;
			}
			return rn;
		}


		//5 �ر�
		public void close()
		{
			try 
			{
				stmt.close();
				rs.close();
				con.close();
				JOptionPane.showMessageDialog(null, "�ر�����");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "�رղ����쳣");
			}
			
		}
		
	
}

