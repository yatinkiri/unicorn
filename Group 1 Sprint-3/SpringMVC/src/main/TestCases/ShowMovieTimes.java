package com.movies.db;

import static org.junit.Assert.assertTrue;

import java.util.Map;

import org.junit.Before;
import org.junit.Test;

public class ShowMovieTimes {
	DbManager db = null;

	@Before
	public void setUp() throws Exception {
		db = new DbManager();
	}

	@Test
	public void test() throws Exception {
		Map<String, String> result = db.getMovieTimes("102");
		assertTrue("Success", result.size() > 0);
	}

	@Test
	public void test1() throws Exception {
		Map<String, String> result = db.getMovieTimes("105");
		assertTrue("Success", result.size() == 0);
	}

}
