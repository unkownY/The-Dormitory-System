package stu_admin_login;
import dataBase.DB;
import java.sql.*;

public class Psd 
{
	public boolean stuPsd(StuInfo student)
	{
		boolean check = false;
		Connection con = new DB().DBCon();
		String sql = "update students set stu_psd= "+ student.getStu_Psd()+" WHERE stu_id = "+student.getStu_ID()+" ;" ;
		try
		{
			Statement state = con.createStatement();
			state.executeUpdate(sql);
			check = true;
		} 
		catch (SQLException e) 
		{
			System.out.println("UPDATE ERROR .");
		}
		return check;
	}
	
	public boolean adminPsd(AdminInfo admin)
	{
		boolean check = false;
		Connection con = new DB().DBCon();
		String sql = "update students set stu_psd= "+ admin.getAdmin_ID()+" WHERE stu_id = "+admin.getAdmin_ID()+" ;" ;
		try
		{
			Statement state = con.createStatement();
			state.executeUpdate(sql);
			System.out.println("UPDATE DOWN .");
			check = true;
		} 
		catch (SQLException e) 
		{
			System.out.println("UPDATE ERROR .");
		}
		return check;
	}
}
