/*
 * Deendayal Kumawat
 * SPIC-5
 */

package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import DBConnection.DBConnect;

import com.Action.AddContactAction;

public class AddContactModal {
	
	
	
	
	/**
	 * @method:addContact method for execute insert query for add new contact detail
	 * @param ac
	 * @return 1 if insert is successfull else return 0
	 * @throws SQLException
	 */
	public int addContact(AddContactAction ac) throws SQLException{
		PreparedStatement ps=null;
		Integer i =ac.getId() ;
		
		int status=0;
		Connection con;
		int id=(int)i;
		System.out.println(id);
		System.out.println("In AddContact Method");
		System.out.println("name="+ac.getName());		
		System.out.println("Contact:"+ac.getContact_no());
		System.out.println("BirthDate:"+ac.getBirth_date());
		System.out.println("Email_id:"+ac.getEmail());
		System.out.println("in AddContact Insert Query ID"+i);
			con=DBConnect.dbConnect();
			String s1="insert into kp_phonebook values(Ukp_id_seq.nextval,?,?,?,?,?)";
			 ps=con.prepareStatement(s1);
			ps.setString(1,ac.getName());
			ps.setString(2, ac.getContact_no());
			ps.setString(3, ac.getBirth_date());
			ps.setString(4, ac.getEmail());
			ps.setInt(5,id);
			System.out.println(ac.getName()+ac.getContact_no()+ac.getEmail()+ac.getBirth_date()+id);
			status=ps.executeUpdate();
			System.out.println("Inserted Successfully");
			
		
	
		return status;
	}

	public int delete(AddContactAction ac) throws SQLException{
		int status=0;
		Connection con;
		con=DBConnect.dbConnect();
		PreparedStatement ps=null;
		
		ps=con.prepareStatement("delete from kp_phonebook where u_id=?");
	ps.setInt(1, ac.getU_id());
		System.out.println("Contact_no="+ac.getU_id());
		status=ps.executeUpdate();
		System.out.println("Status "+status);
		return status;
		
	}
	
public int select(AddContactAction ac) throws SQLException{
	int status=0;
	Connection con;
	con=DBConnect.dbConnect();
	PreparedStatement ps=null;
	System.out.println("IN Select"+ac.getU_id());
	ps=con.prepareStatement("select name,contact_no,birth_date,email from kp_phonebook where u_id=?");
	ps.setInt(1, ac.getU_id());
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		ac.setName(rs.getString("name"));
		ac.setContact_no(rs.getString("contact_no"));
		ac.setBirth_date(rs.getString("birth_date"));
		ac.setEmail(rs.getString("email"));
		status=ac.getU_id();
		
	}
	
	
	return status;
	
}


public int update(AddContactAction ac) throws SQLException{
	int status=0;
	Connection con;
	con=DBConnect.dbConnect();
	PreparedStatement ps=null;
	System.out.println("IN Update"+ac.getU_id());
	System.out.println("name="+ac.getName());		
	System.out.println("Contact:"+ac.getContact_no());
	System.out.println("BirthDate:"+ac.getBirth_date());
	System.out.println("Email_id:"+ac.getEmail());
	
	String s1="update  kp_phonebook set name=?,contact_no=?,birth_date=?,email=? where u_id=?";
	 ps=con.prepareStatement(s1);
	ps.setString(1,ac.getName());
	ps.setString(2, ac.getContact_no());
	ps.setString(3, ac.getBirth_date());
	ps.setString(4, ac.getEmail());
	ps.setInt(5,ac.getU_id());
	System.out.println(ac.getName()+ac.getContact_no()+ac.getEmail()+ac.getBirth_date()+ac.getU_id());
	status=ps.executeUpdate();
	
	
	System.out.println("Update Successfully");
	

	
	
	return status;
	
	
	
}
		
		
		
	}


