package dataBase;

import java.sql.*;

public class DB 
{
	public Connection DBCon()
	{
		Connection con = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dormitory";
			String user = "root";
			String psd = "ycj19950510";
			con = DriverManager.getConnection(url, user, psd);
		} 
		catch (Exception e) 
		{
			System.out.print("SQL ERROR .");
		}
		return con; 
	}
}
