package sprout.controller;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.sql.*;
import javax.naming.*;

import sprout.helper.*;
import sprout.model.*;
import sprout.utility.SQLOperations;




@WebServlet("/login.html")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	public void init() throws ServletException {
		if(getServletContext().getAttribute("dbConnection") == null){
			try{
			InitialContext context = new InitialContext();
			DataSource datasource = (DataSource)
					context.lookup("java:comp/env/jdbc/SPROUT");
			connection = datasource.getConnection();
			getServletContext().setAttribute("dbConnection", connection);
			System.out.println("Connection Successfull");
			}catch(NamingException e){
				e.printStackTrace();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}else{
			connection = (Connection) getServletContext().getAttribute("dbConnection");
			System.out.println("Connection Successfull");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ResultSet rs=null;
		try{
			String userName=request.getParameter("userName");
			String password=request.getParameter("password");
			
			rs=SQLOperations.login(userName, password, connection);
			
			HttpSession session=request.getSession();
			if(!rs.wasNull())
			{
				rs.beforeFirst();
				//user found
				while(rs.next()){
				
				session.setAttribute("email", rs.getString("email"));
				session.setAttribute("userName", userName);
				session.setAttribute("password", password);
				session.setAttribute("firstName", rs.getString("firstName"));
				session.setAttribute("lastName",rs.getString("lastName"));
				session.setAttribute("birthdate", rs.getDate("birthdate"));
					
				}
				
				
				getServletContext().setAttribute("dbConnection", connection);
				getServletContext().getRequestDispatcher("/main.jsp").forward(request, response);
			}else{
				//user not found
				getServletContext().setAttribute("dbConnection", connection);
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}
			
		}catch(Exception e){
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
	}

}
