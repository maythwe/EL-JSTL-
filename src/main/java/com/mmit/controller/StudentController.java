package com.mmit.controller;

import java.io.File;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mmit.entity.Student;

@MultipartConfig
@WebServlet({"/add-student","/student"})
public class StudentController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("title", "addstudent");
		getServletContext().getRequestDispatcher("/student-add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				//get request data
				Part imgPart=req.getPart("photo");//filename
				String name=req.getParameter("studentname");
				String email=req.getParameter("email");
				String age=req.getParameter("age");
				String year=req.getParameter("year");
				String address=req.getParameter("address");
				String dateofbirth=req.getParameter("dateofbirth");
				System.out.println(imgPart);
				
				String imgFileName=imgPart.getSubmittedFileName();//user.jpg
				
				String currentName=imgFileName.substring(0, imgFileName.lastIndexOf("."));//user
				
				String newName=""+System.currentTimeMillis();//user123456
				
				imgFileName=imgFileName.replace(currentName, newName);//user.jpg=>user123456
				
				//create user object
				//create obj
				Student s=new Student();
				s.setProfile(imgFileName);
				s.setAddress(address);
				s.setAge(Integer.parseInt(age));
				s.setDateofbirth(LocalDate.parse(dateofbirth));
				s.setEmail(email);
				s.setName(name);
				s.setYear(year);
				
				
				//add user object to request scope
				req.setAttribute("userinfo",s );
				
				//save client upload file in server
				String rootPath=getServletContext().getRealPath("");
				String dirPath=rootPath+File.separator+"imgUploads";
				File rootDir=new File(dirPath);
				if(!rootDir.exists())
					rootDir.mkdirs();
				imgPart.write(rootDir+File.separator+imgFileName);
				
				//invoke other web resource to display data
				getServletContext().getRequestDispatcher("/student.jsp").forward(req, resp);
				
		
				//get session obj
				HttpSession session=req.getSession(true);
				List<Student> list=(ArrayList<Student>)session.getAttribute("studentlist");
				if(list==null)
					list=new ArrayList<Student>();
				
				//add course obj to list
				list.add(s);
				
				//add list obj to session
				session.setAttribute("studentlist", list);
				
				//invoke other web page
				resp.sendRedirect("student.jsp");
			}


}
