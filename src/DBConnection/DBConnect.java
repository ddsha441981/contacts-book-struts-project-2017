/*
 * Deendayal Kumawat
 * SPIC-5
 */

/**
 * Class For Database Connection
 */
package DBConnection;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


/**
 * 
 * @author Deendayal Kumawat
 *
 */
public class DBConnect {
	static Connection con;
	
	
	/**
	 * 
	 * @return dbConnect() Method For JDBC Connection
	 */
	public static Connection dbConnect()
	{	
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");//Driver Load
				System.out.println("Driver Connected..!!");
				
				
				/**
				 * Url ID And Password For Database Connection
				 */
				con=DriverManager.getConnection("jdbc:oracle:thin:@Deendayal-PC:1521:XE","HR","password");
				System.out.println("Connection Established");
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
		
		return con;
		
}
}
