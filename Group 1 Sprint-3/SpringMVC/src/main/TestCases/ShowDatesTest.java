package com.movies.db;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

public class ShowDatesTest {
	DbManager db = null;

	@Before
	public void setUp() throws Exception {
		db = new DbManager();
	}

	@Test
	public void test() throws Exception {
		List<String> result = db.getShowDates("The Dark Knight Rises");
		assertTrue("Success", result.size() > 0);
	}

	@Test
	public void test1() throws Exception {
		List<String> result = db.getShowDates("Dark Knight Rises 5");
		assertTrue("Success", result.size() == 0);

	}
}
