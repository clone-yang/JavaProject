package com.servlet;

import java.io.*;
import com.db.DB3;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class UpLoad extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		this.doPost(request,response) ;
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
	String path="MyJsp1.jsp";
    try{
    	String tempFileName=new String("tempFile1");//�����ϴ����ļ����ݵ���ʱ�ļ����ļ���  
        File tempFile1=new File("D:\\",tempFileName);
        FileOutputStream outputFile=new FileOutputStream(tempFile1);
        InputStream fileSource=request.getInputStream();//�õ��ͻ����ύ����������
        byte b[]=new byte[1000];
        int n;
        while((n=fileSource.read(b))!=-1)
        	outputFile.write(b,0,n);//���õ��Ŀͻ�������д����ʱ�ļ�
        outputFile.close();
        fileSource.close();
        
    String name1 =request.getParameter("name");
    System.out.println(name1);
    RandomAccessFile randomFile1=new RandomAccessFile(tempFile1,"r");
    randomFile1.readLine();//��ȡ��һ������
    String FilePath=randomFile1.readLine();//��ȡ�ڶ������ݣ��������ݰ������ļ���·�����ļ���
    int position=FilePath.lastIndexOf('\\');//�ȵ��ļ��� 
    String filename=FilePath.substring(position+1,FilePath.length()-1);
    filename=new String(filename.getBytes("iso-8859-1"),"utf-8");
    
    randomFile1.readLine();
    randomFile1.readLine();
    long forthEnterPosition= randomFile1.getFilePointer();//�ҵ��ϴ����ļ����ݵĽ���λ�ã���������4��
    
    
    File FileUploadDir=new File("D:\\","load");
    FileUploadDir.mkdir();
    File saveFile1=new File("D:\\",filename);
    RandomAccessFile randomFile2=new RandomAccessFile(saveFile1,"rw");
    
    long endPosition=randomFile1.length();
    int j=1;
    while((endPosition>=0)&&(j<=4))
       {
     endPosition--;
     randomFile1.seek(endPosition);
     if(randomFile1.readByte()=='\n')
      j++;
       }
    randomFile1.seek(forthEnterPosition);  
    long startPoint=randomFile1.getFilePointer();  
    while(startPoint<endPosition-1)  
      {  
         randomFile2.write(randomFile1.readByte());  
         startPoint=randomFile1.getFilePointer();  
      }  
    
    randomFile1.close();
    randomFile2.close();
    tempFile1.delete();
    String fileplace = filename;
    System.out.println(fileplace);
	
    path = "MyJsp.jsp";
    }
    catch (Exception e) {
		// TODO: handle exception
    	
	}
    request.getRequestDispatcher(path).forward(request,response) ;
}
}