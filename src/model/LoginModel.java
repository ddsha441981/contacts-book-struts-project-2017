/*
 * Deendayal Kumawat
 * SPIC-5
 */

package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DBConnection.DBConnect;

import com.Action.LoginAction;

/**
 * Class Name:LoginModel
 * 
 * @version 7
 * @author Krunal Patel
 */

public class LoginModel {

	/**
	 * this method is use to insert New Registration data
	 * @return int value 1 if inserted 0 if not inserted
	 * @since 02-FEB-2017
	 * @param LoginAction class that give all getter setter value from jsp page
	 * @throws SQLException 
	 */

	public int register(LoginAction r) throws SQLException {
		PreparedStatement ps;
		int status = 0;// Initialize status vatiable

		/**
		 * Call Connection Object From DBConnect Class For Connection
		 */
		Connection con = DBConnect.dbConnect();

		System.out.println("before prepared" + r.getFirstname());
		
		
		
			if(!isEmailAndContactExist(r.getEmail_id(),r.getMobile_no())){
				String s2 = "insert into kp_registration values(kp_id_seq.nextVal,?,?,?,?,?,?,?,?,'user','enable')";
				ps = con.prepareStatement(s2);

				ps.setString(1, r.getFirstname());
				ps.setString(2, r.getLastname());
				ps.setString(3, r.getMobile_no());
				System.out.println("Date");
				ps.setString(4,r.getDob());
				
				// ps.setDate(4,new java.sql.Date(r.getDob().getTime()));
				ps.setString(5, r.getCity());
				ps.setString(6, r.getEmail_id());
				ps.setString(7, r.getPassword());
				ps.setString(8, r.getGender());

				status = ps.executeUpdate();// Execute Method for Insert query

				System.out.println("Insert Successfully");

			}

		return status;

	}

	/**
	 * this method is use to check email id and contact existence
	 * @return boolean true if email id or contact exist, false if both are not exist
	 * @since 10-FEB-2017
	 * @param String email to accept user email id
	 * @param String email to accept user contact id
	 * @throws SQLException 
	 */
	public boolean isEmailAndContactExist(String email, String contact) throws SQLException {
		boolean flag = false;
		String s1 = "select email_id,mobile_no from kp_registration where email_id=? or mobile_no=?";
		Connection con = DBConnect.dbConnect();
		PreparedStatement ps = con.prepareStatement(s1);
		System.out.println("Email : "+email +" Contact : "+contact);
		ps.setString(1, email);
		ps.setString(2, contact);
		ResultSet rs = ps.executeQuery();
		flag=rs.next();
		System.out.println("Exist : "+flag);
		return flag;
	}


	/**
	 * this method is use to check Email_id and password for login 
	 * @return int 1 if email_id and password match 0 if not match
	 * @since 5-FEB-2017
	 * @param String email to accept user email id
	 * @param String email to accept user contact id
	 * @throws SQLException 
	 */
	public int login(LoginAction ra) throws SQLException {
		
		Connection con = DBConnect.dbConnect();
		int status = 0;// Initialize status vatiable	
		

		String s1 = "select id,email_id,password,status from kp_registration where email_id=? and password=? ";

		PreparedStatement st = con.prepareStatement(s1);
		st.setString(1, ra.getEmail_id());
		st.setString(2, ra.getPassword());

		ResultSet rs = st.executeQuery();
		while (rs.next()) {
			
			String col1 = rs.getString("email_id");
			String col2 = rs.getString("password");
			String col3=rs.getString("status");
			if(col3.equals("disable")){
				return status=-1;
			}
			
			else if (ra.getEmail_id().equals(col1) && ra.getPassword().equals(col2) ) {
				 status=(rs.getInt("id"));
				 System.out.println("in Login Check ID:"+status);
				
				 return status;
			}
			else{
				return status=-2;
			}

		}
		return status;

		

	}

	/**
	 * 
	 * @param ra
	 * @return
	 * @throws SQLException
	 *             forgotPassword() Method For ForgotPassword By User
	 */

	public int forgotPassword(LoginAction ra) throws SQLException {
		/**
		 * Call Connection Object From DBConnect Class For Connection
		 */
		Connection con = DBConnect.dbConnect();
		int status = 0;// Initialize status vatiable

		String s1 = "update kp_registration set password=? where email_id=? and mobile_no=?";
		String s2 = "select email_id,mobile_no from kp_registration where email_id=? and mobile_no=?";
		PreparedStatement ps = con.prepareStatement(s2);
		ps.setString(1, ra.getEmail_id());
		ps.setString(2, ra.getMobile_no());
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			String col1 = rs.getString("email_id");
			String col2 = rs.getString("mobile_no");

			if (ra.getEmail_id().equals(col1) && ra.getMobile_no().equals(col2)) {
				if (ra.getPassword().equals(ra.getRe_password())) {
					ps = con.prepareStatement(s1);
					ps.setString(1, ra.getPassword());
					ps.setString(2, ra.getEmail_id());
					ps.setString(3, ra.getMobile_no());

					status = ps.executeUpdate();

					System.out.println("Password Change Successfully");

				}
			}

		}

		return status;

	}

	/**
	 * 
	 * @param ra
	 * @return
	 * @throws SQLException
	 *             changePassword() Method For If USer Want To Change The
	 *             Password
	 */

/*public int changePassword(LoginAction ra) throws SQLException {
		Connection con = DBConnect.dbConnect();
		int status = 0;
		int u_id=(int)ra.getId();
		int id=(int)u_id;
		PreparedStatement ps;
		ps=con.prepareStatement("select email_id from kp_registration where id=?");
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			ra.setEmail_id(rs.getString("email_id"));
		}
		
		System.out.println("IN Change Password"+u_id);
		String s1 = "update kp_registration set password=? where id=?";
		if (ra.getPassword().equals(ra.getRe_password())) {
			 ps = con.prepareStatement(s1);
			ps.setString(1, ra.getPassword());
			ps.setInt(2, id);

			status = ps.executeUpdate();

			System.out.println("Password Change Successfully");
		}

		return status;

	}

	*/
	
	
	public int changePassword(LoginAction ra) throws SQLException  {
		Connection con = DBConnect.dbConnect();
		int status = 0;
		int u_id=(int)ra.getId();
		int id=(int)u_id;
		PreparedStatement ps;
		ps=con.prepareStatement("select password from kp_registration where id=? and password=?");
		ps.setInt(1, id);
		ps.setString(2, ra.getPassword());
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String col1=rs.getString(1);
			if(col1.equals(ra.getPassword()))
			{
				String s1 = "update kp_registration set password=? where id=?";
				if (ra.getNw_password().equals(ra.getRe_password())) {
					 ps = con.prepareStatement(s1);
					ps.setString(1, ra.getNw_password());
					ps.setInt(2, id);

					status = ps.executeUpdate();

					System.out.println("Password Change Successfully");
				}
				
			}
		}
		
		
		
		

		return status;

	}

	
}
	

