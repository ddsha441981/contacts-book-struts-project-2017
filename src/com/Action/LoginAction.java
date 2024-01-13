/*
 * Deendayal Kumawat
 * SPIC-5
 */

package com.Action;


import java.sql.SQLException;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import model.LoginModel;
/**
 * 
 * @author spic5
 *
 */
public class LoginAction implements SessionAware{
	/**
	 * Declare variable for REgistration
	 */
	private Integer id;
	private String nw_password;
	private String re_password;
	private String dob;
	private String mobile_no;
	private String firstname;
	private String lastname;
	private String city;
	private String email_id;
	private String password;
	private String gender;
	//private Date dob;
	private String status;

	Map<String, Object> session ;
	 
	private String errorMessage="";
	private String successMessage="";
	
	
	
	/**
	 * 
	 * @return getter setter Method
	 */
	
					/*	Start Of Getter Setter Method*/
	
	
	
	public String getDob() {
		return dob;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNw_password() {
		return nw_password;
	}
	public void setNw_password(String nw_password) {
		this.nw_password = nw_password;
	}
	public String getSuccessMessage() {
		return successMessage;
	}
	public void setSuccessMessage(String successMessage) {
		this.successMessage = successMessage;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	/*public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}*/
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRe_password() {
		return re_password;
	}
	public void setRe_password(String re_password) {
		this.re_password = re_password;
	}
	
			/*	End Of Getter Setter Method*/
	
	
	
	/**
	 * 
	 * @return
	 * @throws SQLException
	 *  execute() Method For Registration Execute
	 * 
	 */
	
				
	
	public String execute() throws SQLException 
	{	
		
		int i;
		
		i = new LoginModel().register(this);
		
		if(i>0){
			this.successMessage="<div class='alert alert-success fade in'><a href='UserRegistration.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Registration Successfully Done...!!!</strong></div>";
			return "success";
			}
		this.errorMessage="<div class='alert alert-danger fade in'><a href='UserRegistration.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Email_id Or Password Invalid...!!!</strong></div>";
			return "error";		
		
	}
	
	
	
	/**
	 * 
	 * @return
	 * @throws SQLException
	 *  executeSAve() Method For Login Execute
	 * 
	 */
	
	
	public String executeSave() throws SQLException
	{
		int i;
		i=new LoginModel().login(this);
		
		if(i>0){
			
			
			//Integer j=0;
			Integer id=0;
			System.out.println("In Execute Save"+i);
			id=(Integer)i;
			System.out.println("Change Id"+id);
    		//id = (Integer) session.put("seesion_id", j);
    		//System.out.println("ID IN Execute Save"+ id);
    		
    		    session.put("login",id);     		
    		this.successMessage="<div class='alert alert-success fade in'><a href='WelcomeUser.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Login Successfully Done...!!!</strong></div>";
    		
    		return "success";
		
		}
		else if(i==-1){
			this.errorMessage="<div class='alert alert-warning fade in'><a href='Login.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Your Plan Is Deactivated...!!!</strong></div>";

		return "error";
		}
		this.errorMessage="<div class='alert alert-danger fade in'><a href='Login.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Email_id Or Password Invalid ...!!!</strong></div>";

			return "error";
	
		
	}
	
	
	/**
	 * 
	 * @return
	 * @throws SQLException
	 *  executeForgotPassword() Method For ForgotPassword Execute
	 * 
	 */
	
	
	public String executeForgotPassword() throws SQLException
	{
		int k;
		k= new LoginModel().forgotPassword(this);
		System.out.println("K"+k);
		if(k>0){
		this.successMessage="<div class='alert alert-success fade in'><a href='Login.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Password Change Successfully Done...!!!</strong></div>";
		return "success";
		}
		this.errorMessage="<div class='alert alert-danger fade in'><a href='ForgotPassword.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Email_id Or Password Invalid...!!!</strong></div>";
		//this.errorMessage="<div class='alert alert-success alert-dismissable' id='myAlert'> <button type='button' class='close' aria-label='Close'> <span aria-hidden='true'>&times;</span></button><strong>Success!</strong> Indicates a successful or positive action.</div>";
		return "error";
		
	}
	
	
	/**
	 * 
	 * @return
	 * @throws SQLException
	 *  executeChangePassword() Method For ChangePassword Execute
	 * 
	 */
	
	public String executeChangePassword() throws SQLException 
	{
		int i;
		id=(Integer) session.get("login");
		System.out.println("In Execute Change PAssword"+id);
		i = new LoginModel().changePassword(this);
		System.out.println("ID"+id);
		if(i>0){
			this.successMessage="<div class='alert alert-success fade in'><a href='ChangePassword.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Password Change Successfully Done...!!!</strong></div>";
		return "success";
		}
		this.errorMessage="<div class='alert alert-danger fade in'><a href='ChangePassword.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Old Password Is Wrong..!!!</strong></div>";
		return "error";
		
	}
	

	public void setSession(Map<String, Object> map) {
		// TODO Auto-generated method stub
		session=map;
	}

	
	

}
