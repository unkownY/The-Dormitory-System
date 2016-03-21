package stu_admin_login;
import java.sql.*;
import dataBase.DB;
public class StuFind 
{
	public String stuFind(StuInfo stu)
	{
		String stuInfo = null;
		Connection con = new DB().DBCon();
		String sql = "select *from students where stu_id = "+stu.getStu_ID()+";";
		try
		{
			Statement sta = con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			while(rs.next())
			{
				stuInfo =rs.getString("stu_ID")+","+
						rs.getString("stu_NAME")+","+
						rs.getString("gender")+","+
						rs.getString("major")+","+
						String.valueOf(rs.getInt("apartment_ID"))+","+
						String.valueOf(rs.getInt("dom_ID"))+","+
						rs.getString("stu_psd");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return stuInfo;	
	}
}
