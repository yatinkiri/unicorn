package com.movies.db;

import java.sql.*;

import com.movies.controller.Dataset;

/*import com.srd.bean.User;
import com.srd.db.DbAdmin;*/


public class DbManager {
	private static Connection conn = ConnectionManager.getConnection();
	
	public static void Insert(Dataset dataset) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		
		String sql	=	"INSERT INTO USER (userID, password, firstName,lastName,email,city) VALUES (?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dataset.getUname());
		pstmt.setString(2, dataset.getPass());
		pstmt.setString(3, dataset.getFname());
		pstmt.setString(4, dataset.getLname());
		pstmt.setString(5, dataset.getEmail());
		pstmt.setString(6, dataset.getCity());
		pstmt.executeUpdate();
		ConnectionManager.closeConnection();		
	}
	
	public static int checkuser(com.movies.controller.Dataset set) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		
		String sql	=	"SELECT COUNT(*) FROM USER WHERE userID=? AND password=?";
		PreparedStatement pstmt	=	conn.prepareStatement(sql);
		pstmt.setString(1, set.getUname());
		pstmt.setString(2, set.getPass());
		ResultSet rs	=pstmt.executeQuery();
		
		int count = 0;
		while(rs.next()){
			count	=	rs.getInt(1);
		}
		//ConnectionManager.closeConnection();
		
		return count;
		
	}
	
	/* public static getset addUser(String uname, String password, String fname, String lname, String email, String city)
     {

 Connection connection = connectionManager.getConnection();
 PreparedStatement insertRow;
 String userID = null;
 // insert the new row into the table
 try {
     insertRow = connection.prepareStatement("INSERT INTO USER (userID, password, firstName, lastName,email,city) VALUES (?, ?, ?, ?, ?, ?)");
     insertRow.setString(1, uname);
     insertRow.setString(2, password);
     insertRow.setString(3, fname);
     insertRow.setString(4, lname);
     insertRow.setString(5, email);
     insertRow.setString(6, city);
     
     insertRow.executeUpdate();
     
     String identityQuery = "SELECT @@IDENTITY AS IDENTITY";
     Statement identityStatement = connection.createStatement();
     ResultSet identityResultSet = identityStatement.executeQuery(identityQuery);
     identityResultSet.next();
     Long uid = identityResultSet.getLong("IDENTITY");
     System.out.println(uid);
     userID=uid.toString();
     identityResultSet.close();
     identityStatement.close();
     
     

 } catch (SQLException se) {
     if (((se.getErrorCode() == 30000) && ("23505".equals(se.getSQLState())))) {
         System.out.println("ERROR: Could not insert record into USER; dup primary key: " + userID);
     } else {
         System.out.println("ERROR: Could not add row to USER table: " + userID + " " + se.getCause());
     }
     return null;
 } catch (Exception e) {
     System.out.println("ERROR: Could not add row to USER table: " + userID);
     return null;
 }
 System.out.println("Added user to USER table: " + userID);

 // return the new User object
 return new getset(uname,password, fname, lname , email,city);
}
*/

}
