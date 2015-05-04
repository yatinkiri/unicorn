package com.movies.db;

import static org.junit.Assert.assertTrue;

import java.sql.SQLException;

import org.junit.Before;
import org.junit.Test;

import com.movies.controller.Dataset;

public class LoginTest {

	Dataset dataSet;

	@Before
	public void setUp() throws Exception {
		dataSet = new Dataset();
	}

	@Test
	public void testCheckuser() throws ClassNotFoundException, SQLException {
		dataSet.setUname("kapil");
		dataSet.setPass("kapil");
		int valid = DbManager.checkuser(dataSet);
		assertTrue("Success", valid == 1);

	}

	@Test
	public void testCheckuser1() throws ClassNotFoundException, SQLException {
		dataSet.setUname("vinod");
		dataSet.setPass("palreddy");
		int valid = DbManager.checkuser(dataSet);
		assertTrue("Success", valid != 1);

	}

	@Test
	public void testCheckuser2() throws ClassNotFoundException, SQLException {
		dataSet.setUname("vpal");
		dataSet.setPass("quev");
		int valid = DbManager.checkuser(dataSet);
		assertTrue("Success", valid != 1);

	}

}
