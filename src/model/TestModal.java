/*
 * Deendayal Kumawat
 * SPIC-5
 */


package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DBConnection.DBConnect;

import com.Action.TestAction;

public class TestModal {
	
	public int save(TestAction t) throws SQLException{
		int status=0;
		Connection con;
		PreparedStatement ps=null;
		con=DBConnect.dbConnect();
		System.out.println("Connected");
		String s1="insert into test values(?,?,?)";
		 ps=con.prepareStatement(s1);
		ps.setString(1,t.getName());
		ps.setString(2, t.getContact());
		ps.setString(3, t.getEmail());
		
		System.out.println(t.getContact()+t.getEmail()+t.getName());
		status=ps.executeUpdate();
		System.out.println("Inserted Successfully");
		
		return status;
		
		
	}
	
	
	public int delete(TestAction t) throws SQLException{
		int status=0;
		Connection con;
		con=DBConnect.dbConnect();
		PreparedStatement ps=null;
		
		ps=con.prepareStatement("delete from kp_phonebook where contact=?");
		ps.setString(1,t.getContact());
		System.out.println("Contact="+t.getContact());
		status=ps.executeUpdate();
		System.out.println("Status "+status);
		
		return status;
		
		
	}
	

}
