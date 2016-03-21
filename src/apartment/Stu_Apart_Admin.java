package apartment;
import java.sql.*;

import javax.ejb.SessionContext;
import javax.servlet.http.*;

import dataBase.DB;

public class Stu_Apart_Admin 
{
	private int Apart_ID;	//公寓
	private String Apart_com;
	
	private String Stu_ID;		//学生
	private String Stu_NAME;
	private String gender;
	private String major;
	private int Apart;
	private int dom;
	
	private int apartID;			//公寓管理员
	private int aparter_ID;
	private String aparter_NAME;
	private String aparter_gender;
	private String phone;
	
	
	Connection con = new DB().DBCon();
	public String apartSelect()
	{
		String a = null;
		String sql = "select * from apartment;";
		try 
		{
			Statement sta = con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			int i = 0;
			while(rs.next())
			{
				if(i==0)
				{
					a = rs.getInt(1)+","+rs.getString(2)+",";
				}
				else
				{
					a = a+rs.getInt(1)+","+rs.getString(2)+",";
				}
				i++;
			}
		}
		catch (SQLException e)
		{
			System.out.print("SELECT ERROR .");
		}
		return a;
	}

	public String aparterFind(String sql)
	{
		int i=0;
		String a = null ;
		try 
		{
			Statement sta = con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			while(rs.next())
			{
				if(i==0)
				{
					a = rs.getString(1)+",";
				}
				else
				{
					a = a+rs.getString(1)+",";
				}
				i++;
			}
		} 
		catch (SQLException e)
		{
			System.out.print(a);
		}
		return a ;
	}
	
	
	public void apartUpdate()
	{
		String sql = "update apartment set comments = "+"'"+getApart_com()+"'"+ "WHERE apartment_ID= "+getApart_ID() +" ;" ;
		try
		{
			Statement sta = con.createStatement();
			sta.executeUpdate(sql);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}
	
	
	public void addApart()
	{
		 Connection con = new DB().DBCon();
		 try 
		 {
			Statement sta = con.createStatement();
			System.out.print("1"); 
			String sql = "insert into apartment values(\""+getApart_ID()+"\",\""+getApart_com()+"\");";
			System.out.print("2"); 
			sta.execute(sql);
		 }
		 catch (SQLException e) 
		 {
		 	 System.out.print("INSERT ERROR .");
		 } 
	}
	
	public void addAparter()
	{
		Connection con = new DB().DBCon();
		 try 
		 {
			Statement sta = con.createStatement();
			String sql = "insert into apartmenter values("+getAparter_ID()+",\""+getAparter_NAME()+"\",\""+getAparter_gender()+"\","+getApartID()+",\""+getPhone()+"\");";
			sta.execute(sql);
		 }
		 catch (SQLException e) 
		 {
		 	 System.out.print("INSERT ERROR .");
		 }
	}
	
	public void addStu()
	{
		Connection con = new DB().DBCon();
		 try 
		 {
			Statement sta = con.createStatement();
			String sql = "INSERT INTO students (stu_ID, stu_NAME,gender, major, apartment_ID, dom_ID)" +
"VALUES ("+getStu_ID()+", \""+getStu_NAME()+"\", \""+getGender()+"\", \""+getMajor()+"\", \""+getApart()+"\", "+getDom()+");";
			 sta.execute(sql); 
		 }
		 catch (SQLException e) 
		 {
		 	  e.printStackTrace();
		 }
	}
	
	public int getApart_ID() {
		return Apart_ID;
	}
	public void setApart_ID(int apart_ID) {
		Apart_ID = apart_ID;
	}
	public String getApart_com() {
		return Apart_com;
	}
	public void setApart_com(String apart_com) {
		Apart_com = apart_com;
	}
	public String getStu_ID() {
		return Stu_ID;
	}
	public void setStu_ID(String stu_ID) {
		Stu_ID = stu_ID;
	}
	public String getStu_NAME() {
		return Stu_NAME;
	}
	public void setStu_NAME(String stu_NAME) {
		Stu_NAME = stu_NAME;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getApart() {
		return Apart;
	}
	public void setApart(int apart) {
		Apart = apart;
	}
	public int getDom() {
		return dom;
	}
	public void setDom(int dom) {
		this.dom = dom;
	}
	public int getApartID() {
		return apartID;
	}
	public void setApartID(int apartID) {
		this.apartID = apartID;
	}
	public int getAparter_ID() {
		return aparter_ID;
	}
	public void setAparter_ID(int aparter_ID) {
		this.aparter_ID = aparter_ID;
	}
	public String getAparter_NAME() {
		return aparter_NAME;
	}
	public void setAparter_NAME(String aparter_NAME) {
		this.aparter_NAME = aparter_NAME;
	}
	public String getAparter_gender() {
		return aparter_gender;
	}
	public void setAparter_gender(String aparter_gender) {
		this.aparter_gender = aparter_gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	
}
