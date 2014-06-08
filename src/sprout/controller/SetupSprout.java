package sprout.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import sprout.utility.SQLOperations;


@WebServlet("/SetupSprout")
public class SetupSprout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection connection;
	
	static Date currentDatetime = new Date(); 
	public void init() throws ServletException {
		if(getServletContext().getAttribute("connObj") == null){
			try{
			InitialContext context = new InitialContext();
			DataSource datasource = (DataSource)
					context.lookup("java:comp/env/jdbc/SPROUT");
			connection = datasource.getConnection();
			getServletContext().setAttribute("connObj", connection);
			}catch(NamingException e){
				e.printStackTrace();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}else{
			connection = (Connection) getServletContext().getAttribute("connObj");
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			if(connection != null){
				int userid = Integer.parseInt(request.getParameter("userid"));
				String sproutName = request.getParameter("sproutname");
				int lastid = SQLOperations.addSprout(sproutName, "", userid, connection);
				String status = "";
				if(lastid > 0){
					status = "success";
					System.out.println("Sprout created!");
				}else{
					status = "failed";
					System.out.println("Sprout creation - failed!");
				}
				 response.setContentType("text/plain");  
				  response.setCharacterEncoding("UTF-8"); 
				  response.getWriter().write(status); 
				
				
			}else{
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
