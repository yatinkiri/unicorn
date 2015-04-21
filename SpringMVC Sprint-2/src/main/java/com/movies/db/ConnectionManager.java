package com.movies.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ConnectionManager {

	private static String dbURL = "jdbc:mysql://localhost:3306/";
    private static String schemaName = "unicorn";
    private static String dbUsername = "root";
    private static String dbPassword = "mysql";
    private static Connection connection;

    public ConnectionManager() {
        try {
            // load the DB driver
            Class.forName("com.mysql.jdbc.Driver");
            // get a DB connection
            connection = DriverManager.getConnection(dbURL + schemaName, dbUsername, dbPassword);
        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR: Driver not found");
            connection = null;

        } catch (SQLException ex) {
            System.out.println("ERROR: Could not create DB connection");
        }

    }

    public static Statement getNewStatement() {
        Statement statement;
        try {
            if (connection == null) {
                new ConnectionManager();
            }
            /* Creating a statement object that we can use for running
             * SQL statements commands against the database.*/
            statement = connection.createStatement();
        } catch (Exception e) {
            System.out.println("ERROR: Could not create SQL statement object: " + e);
            statement = null;
        }
        return statement;
    }

    public static Connection getConnection() {
        if (connection == null) {
            new ConnectionManager();
        }
        System.out.println("connection open");
        return connection;
    }

    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public static void main (String args[]) throws Exception{
    	/*ConnectionManager con = new ConnectionManager();
    	con.getConnection();
    	System.out.println(con);
    	Dataset set = new Dataset();
    	set.setUname("a");
    	set.setPass("b");
    	DbManager db = new DbManager();
    	int check = db.checkuser(set);
    	System.out.println(check);*/
    }
    
}
