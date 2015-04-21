package com.movies.db;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import com.movies.controller.Dataset;
import com.movies.controller.RunningMovies;
import com.movies.controller.UpcomingMovies;

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
		//ConnectionManager.closeConnection();		
	}
	
	public static int checkuser(com.movies.controller.Dataset set) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		
		String sql	=	"SELECT COUNT(*) FROM USER WHERE userID=? AND password=?";
		PreparedStatement pstmt	=	conn.prepareStatement(sql);
		pstmt.setString(1, set.getUname());
		pstmt.setString(2, set.getPass());
		ResultSet rs =pstmt.executeQuery();
		
		int count = 0;
		while(rs.next()){
			count	=	rs.getInt(1);
		}
		//ConnectionManager.closeConnection();
		
		return count;
		
	}
	
	public Map<String, String>getMovieTimes(String id) throws Exception{
		 Class.forName("com.mysql.jdbc.Driver");
		String sql = "select * from runningmovieshowtime  where rmovieId='"+id+"'" ;
		System.out.println(sql);
		PreparedStatement pstmt	=	conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		Map<String,String> shows = new HashMap<String, String>();
		while(rs.next()){
			System.out.println(rs.getString("moviedate"));
		shows.put(rs.getString("moviedate"), rs.getString("movieTime"));
		}
		System.out.println(shows.size());
		return shows;
		
	}
	
	public List<String> getShowDates(String name) throws Exception{
		 Class.forName("com.mysql.jdbc.Driver");
		String sql = "select distinct t.moviedate from runningMovie r , runningmovieshowtime t where r.rmovieId=t.rmovieId and r.movieName ='"+name+"'" ;
		System.out.println(sql);
		PreparedStatement pstmt	=	conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		List<String> dates = new ArrayList<String>();
		while(rs.next()){
		    dates.add(rs.getString("moviedate"));
		}
		System.out.println(dates.size());
		return dates;
		
	}
	
	public  ArrayList<RunningMovies> getMovieDetails() throws Exception{
		
        Class.forName("com.mysql.jdbc.Driver");
		
		String sql	=	"SELECT * FROM runningmovie";
		PreparedStatement pstmt	=	conn.prepareStatement(sql);
		ResultSet rs	=pstmt.executeQuery();
		int col = rs.getMetaData().getColumnCount();
		ArrayList<RunningMovies> movies = new ArrayList<RunningMovies>();
		DbManager db = new DbManager();
		while(rs.next()){
			
				RunningMovies run = new RunningMovies();
				run.setMovieName(rs.getString("movieName"));
				run.setMovieDesc(rs.getString("MovieDescription"));
				run.setActor(rs.getString("Actor"));
				run.setActress(rs.getString("Actress"));
				run.setImg(rs.getString("movieImg"));
				/*Map<String,String> showTimes = db.getMovieTimes(rs.getString("rmovieId")) ;
				run.setShowTimes(showTimes);*/
				List<String> dates = db.getShowDates(run.getMovieName());
				run.setDates(dates);
				movies.add(run);
			}
			
		
		//ConnectionManager.closeConnection();
		
		return movies;
		
		
		
	}
	
public  ArrayList<UpcomingMovies> getUpcomingMovieDetails() throws Exception{
		
        Class.forName("com.mysql.jdbc.Driver");
		
		String sql	=	"SELECT * FROM upcomingmovie";
		PreparedStatement pstmt	=	conn.prepareStatement(sql);
		ResultSet rs	=pstmt.executeQuery();
		int col = rs.getMetaData().getColumnCount();
		ArrayList<UpcomingMovies> movies = new ArrayList<UpcomingMovies>();
		DbManager db = new DbManager();
		while(rs.next()){
			
				UpcomingMovies run = new UpcomingMovies();
				run.setMovieName(rs.getString("upmovieName"));
				run.setMovieImage(rs.getString("upMovieImg"));
				run.setMovieDesc(rs.getString("MovieDescription"));
				run.setActor(rs.getString("Actor"));
				run.setActress(rs.getString("Actress"));
				run.setReleaseDate(rs.getString("ReleaseDate"));
				movies.add(run);
			}
			
		
		//ConnectionManager.closeConnection();
		
		return movies;
		
		
		
	}
	
	
	public void insertRunningMovies(RunningMovies run) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String sql = "INSERT INTO runningMovie (rmovieId,movieName,movieImg,MovieDescription,Actor,Actress) VALUES (?,?,?,?,?,?);";
		String sql2 = "select max(rmovieId) as num from runningmovie";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		ResultSet rs = pstmt2.executeQuery();
		int i=0;
		while(rs.next()){
			i=rs.getInt("num");
		}
		Random r = new Random();
		int id = i+r.nextInt(10)+1;
		System.out.println(id);
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, run.getMovieName());
		pstmt.setString(3, run.getImg());
		pstmt.setString(4,run.getMovieDesc() );
		pstmt.setString(5,run.getActor() );
		pstmt.setString(6,run.getActress() );

		pstmt.executeUpdate();
	}
	
	public void insertUpcomingMovies(UpcomingMovies run) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String sql = "INSERT INTO upcomingmovie (umovieId,upMovieName,upmovieImg,MovieDescription,Actor,Actress,ReleaseDate) VALUES (?,?,?,?,?,?,?);";
		String sql2 = "select max(umovieId) as num from upcomingmovie";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		ResultSet rs = pstmt2.executeQuery();
		int i=0;
		while(rs.next()){
			i=rs.getInt("num");
		}
		Random r = new Random();
		int id = i+r.nextInt(10)+1;
		System.out.println(id);
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, run.getMovieName());
		pstmt.setString(3, run.getMovieImage());
		pstmt.setString(4,run.getMovieDesc() );
		pstmt.setString(5,run.getActor() );
		pstmt.setString(6,run.getActress());
		pstmt.setString(7, run.getReleaseDate());

		pstmt.executeUpdate();
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
	public static void main(String args[]) throws Exception{
		
		DbManager db = new DbManager();
		ArrayList<RunningMovies>result = db.getMovieDetails();
		String mve = result.get(1).getMovieName();
		String time = result.get(1).getShowTimes().get("2015-04-15");
		int len = result.get(1).getShowTimes().size();
		System.out.println(mve);
		System.out.println(len);
		RunningMovies run = new RunningMovies();
		run.setActor("actor");
		run.setActress("actress");
		run.setImg("img");
		run.setMovieDesc("movieDesc");
		run.setMovieName("movieName");
	    db.insertRunningMovies(run);
	}

}
