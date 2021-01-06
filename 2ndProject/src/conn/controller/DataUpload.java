package conn.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



@WebServlet("/DataUpload")
public class DataUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//������
		//String path = request.getRealPath("File");
		//�����
		String path = "C:\\Users\\SMT055\\NewPython\\�ӽŷ���\\data\\project";
		
		
		//System.out.println("������ : " + path + "<br/>");
		
		int size = 1024 * 1024 * 10; 
		String fileName = "";
		//String originalFileName = "";
		
		 try{
			 MultipartRequest multi = new MultipartRequest(request, path, size, "EUC-KR", new DefaultFileRenamePolicy());
			 
			 Enumeration files = multi.getFileNames();
			 String str = (String)files.nextElement();
			
			 fileName = multi.getFilesystemName(str);
			 
			
			 //originalFileName = multi.getOriginalFileName(str);
			 
			 //String newFileName ="\\data.txt";
			 
			 //int index = fileName.indexOf(".");
			 //String txt = fileName.substring(index,fileName.length()); //Ȯ���ڸ� ����� �� ����
			 //System.out.println(txt);
			 //String newfile = newFileName + txt;
			 
				/*
				 * File oldFile = new File(path + fileName); File newFile = new File(path +
				 * newFileName);
				 * 
				 * 
				 * boolean success = oldFile.renameTo(newFile);
				 * 
				 * if(success == true) { oldFile.renameTo(newFile); }else {
				 * System.out.println("�ٲ��� �ʾҽ��ϴ�."); }
				 */
		  

		 }catch(Exception e){
		        e.printStackTrace();
		    }
		}

}
