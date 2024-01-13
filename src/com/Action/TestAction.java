/*
 * Deendayal Kumawat
 * SPIC-5
 */
package com.Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DBConnection.DBConnect;

import model.TestModal;

public class TestAction {
	private String name;
	private String contact;
	private String email;
	ArrayList<TestAction> list=new ArrayList<TestAction>();
	
	public ArrayList<TestAction> getList() {
		return list;
	}
	public void setList(ArrayList<TestAction> list) {
		this.list = list;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String execute() throws SQLException{
		System.out.println("In Execute");
		int i=new TestModal().save(this);
		
		
		Connection con = DBConnect.dbConnect();
		PreparedStatement ps=con.prepareStatement("select name,contact,email from test");
	
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			TestAction ac=new TestAction();
			ac.setName(rs.getString("name"));
			System.out.println(rs.getString("name"));
			ac.setContact(rs.getString("contact"));
			System.out.println(rs.getString("contact"));
			ac.setEmail(rs.getString("email"));
			System.out.println(rs.getString("email"));
			
			list.add(ac);
		}
		
		if(i>0){
			return "success";
		}
		return "error";	
		
		
	}
	
	
	public String deleteExecute() throws SQLException{
		System.out.println("in ");
		int i=new TestModal().delete(this) ;
		if(i>0){
			return "success";
		}
		return "error";	
		
		
		
		
	}
	

}

