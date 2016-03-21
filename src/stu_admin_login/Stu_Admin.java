package stu_admin_login;
import dataBase.DB; 
import java.sql.*;

public class Stu_Admin implements StuInf,AdminInf
{
	public boolean stuLogin(StuInfo student) 
	{
		boolean LogIn = false;
		Connection con = new DB().DBCon();
		String sql = "select * from students where stu_id = ? ;";
		try
		{
			PreparedStatement pstate = con.prepareStatement(sql);
			pstate.setString(1, student.getStu_ID());
			ResultSet reslt = pstate.executeQuery();
			if(reslt.next() && reslt.getString("stu_psd").equals(student.getStu_Psd()))
			{
				LogIn = true;
				return LogIn;
			}
		} 
		catch (SQLException e) 
		{
			System.out.println("SELECT ERROR .");
		}
		return LogIn;
	}
	
	public boolean adminLogin(AdminInfo admin)
	{
		boolean LogIn = false;
		Connection con = new DB().DBCon();
		String sql = "select * from admin where admin_name = ? ;";
		try
		{
			PreparedStatement pstate = con.prepareStatement(sql);
			pstate.setString(1, admin.getAdmin_NAME());
			ResultSet reslt = pstate.executeQuery();
			if(reslt.next() && reslt.getString("admin_psd").equals(admin.getAdmin_Psd()))
			{
				LogIn = true;
				return LogIn;
			}
		} 
		catch (SQLException e) 
		{
			System.out.println("SELECT ERROR .");
		}
		return LogIn;
	}
}

