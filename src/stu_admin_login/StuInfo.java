package stu_admin_login;
public class StuInfo
{
	private String stu_ID;				//学生学号
	private String stu_NAME;		//学生姓名
	private String gender;			//性别
	private String major;				//专业
	private int apartment_ID;		//公寓号
	private int dom_ID;				//宿舍号
	private String stu_psd;						//密码
	
	public String getStu_ID() {
		return stu_ID;
	}
	public void setStu_ID(String stu_ID) {
		this.stu_ID = stu_ID;
	}
	public String getStu_NAME() {
		return stu_NAME;
	}
	public void setStu_NAME(String stu_NAME) {
		this.stu_NAME = stu_NAME;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getApartment_ID() {
		return apartment_ID;
	}
	public void setApartment_ID(int apartment_ID) {
		this.apartment_ID = apartment_ID;
	}
	public int getDom_ID() {
		return dom_ID;
	}
	public void setDom_ID(int dom_ID) {
		this.dom_ID = dom_ID;
	}
	public String getStu_Psd() {
		return stu_psd;
	}
	public void setStu_Psd(String stu_psd) {
		this.stu_psd = stu_psd;
	}
}
