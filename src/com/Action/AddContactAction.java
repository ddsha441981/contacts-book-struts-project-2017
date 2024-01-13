/**
 * Class:AddContactAction
 * 
 * @author Deendayal Kumawat
 */

package com.Action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import model.AddContactModal;


import org.apache.struts2.interceptor.SessionAware;



public class AddContactAction  implements SessionAware{
	
	/**
	 * @author spic5
	 *  declare variable for add new contact detail
	 */
	private int u_id;
	private String name;
	private String contact_no;
	private String birth_date;
	private String email;
	Integer id;
	Map sessionmap;
	public String logoutMessage;
	public String errorMessage;
	public String successMessage;
	
	ArrayList<AddContactAction> list=new ArrayList<AddContactAction>();

	public ArrayList<AddContactAction> getList() {
		return list;
	}

	public void setList(ArrayList<AddContactAction> list) {
		this.list = list;
	}
	
	
	

	
	/**
	 * getter setter method
	 * @return
	 */


	public Integer getId() {
		return id;
	}


	public int getU_id() {
		return u_id;
	}


	public void setU_id(int u_id) {
		this.u_id = u_id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getContact_no() {
		return contact_no;
	}


	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}


	public String getBirth_date() {
		return birth_date;
	}


	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	


	

	

	
/**
 * @method :executeAddContact method for add new contact detail
 * @return success if i>1 else return error
 */


	public String executeAddContact(){
		
		int i=0;
		// Integer user=0;	
		 System.out.println("In Execute Add Contact");
		id=(Integer) sessionmap.get("login");
		System.out.println("id is="+id);
		System.out.println("Name:"+name);
		System.out.println("Contact:"+contact_no);
		System.out.println("BirthDate:"+birth_date);
		System.out.println("Email_id:"+email);
		
			
				
				
				try {
					i=new AddContactModal().addContact(this);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
				if(i>0){  
					this.successMessage="<div class='alert alert-success fade in'><a href='AddNewContact.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Contact Detail Added Successfully...!!!</strong></div>";

					return "success";  
				}
				this.errorMessage="<div class='alert alert-danger fade in'><a href='AddNewContact.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Contact Detail Not Addedd..!!!</strong></div>";

				return "error"; 
	}
	
	
	
	public String editSelect() throws SQLException{
		System.out.println("IN Edit Select Method"+id);
		
		int i=new AddContactModal().select(this);
		
		System.out.println("Value Of i="+i);
		if(i>0){
			return "success";
		}
		return "error";	
		
		
	}
	
	
	/**
	 * Method For Delete Contact Detail
	 * @return
	 * @throws SQLException
	 */
	
	public String delete() throws SQLException{
		System.out.println("IN delete Method"+id);
		int i=new AddContactModal().delete(this);
		System.out.println("Value Of i="+i);
		if(i>0){
			return "success";
		}
		return "error";
		
		
	}
	
	
	
	
	/**
	 * Method For Update Contact Detail
	 * @return
	 * @throws SQLException
	 */
	
	public String updateExecute() throws SQLException{
		System.out.println("IN update Method"+u_id);
		int i=new AddContactModal().update(this);
		System.out.println("Value Of i="+i);
		if(i>0){
			return "success";
		}
		return "error";
		
		
	}
	
	
	
	
	/**
	 * Method For Logout User 
	 * @return
	 */
	public String executeLogout(){  
	    sessionmap.remove("login");
	    this.logoutMessage="<div class='alert alert-success fade in'><a href='Login.jsp' class='close' data-dismiss='alert' aria-label='close'>x</a><strong>Logut Successfully Done...!!!</strong></div>";
	    return "success";  
	}  


	public void setSession(Map<String, Object> map) {
		// TODO Auto-generated method stub
		sessionmap=map;
	}

	
	
	

}
