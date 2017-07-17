package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet("/employeeservlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String email=req.getParameter("email");
		int mobno=Integer.parseInt(req.getParameter("mobno"));
		String martialstatus=req.getParameter("martialstatus");
		String nationality=req.getParameter("nationality");
		String address=req.getParameter("address");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq","root","root");
			PreparedStatement pr=con.prepareStatement("insert into testemployee (fname,lname,email,mobno,martialstatus,nationality,address) values(?,?,?,?,?,?,?)");
			
			pr.setString(1,fname);
			pr.setString(2,lname);
			pr.setString(3,email);
			pr.setInt(4,mobno);
			pr.setString(5,martialstatus);
			pr.setString(6,nationality);
			pr.setString(7,address);
			
			int i=pr.executeUpdate();
			if(i!=0){
				resp.sendRedirect("success.jsp");
			}else{
				resp.sendRedirect("failure.jsp");
			}
			
		}catch(Exception e){
			out.println(e.getMessage());
		}
		
		
		
	}

}
