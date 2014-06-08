package sprout.controller;

import java.text.*;
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

/**
 * Servlet implementation class battery
 */
@WebServlet("/battery.html")
public class battery extends HttpServlet {
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
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			
			Kernel32.SYSTEM_POWER_STATUS batteryStatus = new Kernel32.SYSTEM_POWER_STATUS();
			
			Kernel32.INSTANCE.GetSystemPowerStatus(batteryStatus);
			System.out.println(batteryStatus.getBatteryLifePercent());
			System.out.println(batteryStatus);
			
			out.print("<h2> Battery Monitor</h2>");
			out.print("<p> Is Battery Charging: <span id='charging'>"+batteryStatus.getACLineStatusString()+"</span></p>");
			out.print("<p> Battery Life: <span id='life_percent'>"+batteryStatus.getBatteryLifePercent()+"</span></p>");
			out.print("<p> Ecotips: Do not Overcharge your Devices </p>");
			
	          
	        
		}catch(Exception e){
			
		}
	}

}
