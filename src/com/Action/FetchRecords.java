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
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import DBConnection.DBConnect;

public class FetchRecords implements SessionAware{
	Map sessionmap;

	ArrayList<AddContactAction> list=new ArrayList<AddContactAction>();

	public ArrayList<AddContactAction> getList() {
		return list;
	}

	public void setList(ArrayList<AddContactAction> list) {
		this.list = list;
	}
	
	
	
	public String execute() throws SQLException{
		
		Integer id=(Integer) sessionmap.get("login");
		int u_id=(int)id;
		System.out.println("In Fetch Record Id="+id);
		Connection con = DBConnect.dbConnect();
		PreparedStatement ps=con.prepareStatement("select u_id,name,contact_no,birth_date,email from kp_phonebook where id=?");
		ps.setInt(1, u_id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			AddContactAction ac=new AddContactAction();
			ac.setU_id(rs.getInt("u_id"));
			System.out.println(rs.getString("u_id"));
			ac.setName(rs.getString("name"));
			System.out.println(rs.getString("name"));
			ac.setContact_no(rs.getString("contact_no"));
			System.out.println(rs.getString("contact_no"));
			ac.setBirth_date(rs.getString("birth_date"));
			System.out.println(rs.getString("birth_date"));
			ac.setEmail(rs.getString("email"));
			System.out.println(rs.getString("email"));
			list.add(ac);
		}
		System.out.println(list.size());
		return "success";
		
		
	}

	@Override
	public void setSession(Map<String, Object> map) {
		sessionmap=map;
		// TODO Auto-generated method stub
		
	}
	
}
