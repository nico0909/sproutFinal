package sprout.utility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLOperations implements SQLCommands{
	public static int addSprout(String sproutName, String urlPath, int userid, Connection connection){
		int lastid = 0;
		try{
			//String addSprout = "insert into sprout_pet (sproutName, health, sproutstate, sproutmoney, sproutimagepath, userid) values (?, ?, ?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(addSprout,  Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, sproutName);
			ps.setInt(2, 0);
			ps.setString(3, "Happy");
			ps.setInt(4, 0);
			ps.setString(5, urlPath);
			ps.setInt(6, userid);
			
			ps.executeUpdate();
			
			ResultSet rs = ps.getGeneratedKeys();
			if(rs.next()){
				lastid = rs.getInt(1);
			}
			return lastid;
			//return true;
		}catch(SQLException e){
			e.printStackTrace();
			return lastid;
			//return false;
		}
	}
	public static ResultSet login(String userName,String password,Connection connection){
		ResultSet rs=null;
	
		try{
			PreparedStatement pstmt=connection.prepareStatement(login);
		
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if(rs.wasNull()){
				System.out.println("Result Set was not null Login Failed");
				
			}else{
				System.out.println("Login Successfull");
				
				return rs;
			}
		}catch(SQLException e){
			System.out.println("SQL Exception "+e.getMessage());
		}
		return rs;
	}
	
}
