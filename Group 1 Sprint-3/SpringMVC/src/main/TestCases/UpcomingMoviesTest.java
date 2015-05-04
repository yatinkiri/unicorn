package com.movies.db;

import static org.junit.Assert.assertTrue;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import com.movies.controller.UpcomingMovies;

public class UpcomingMoviesTest {
	DbManager db = null;

	@Before
	public void setUp() throws Exception {
		db = new DbManager();
	}

	@Test
	public void test() throws Exception {
		ArrayList<UpcomingMovies> result = db.getUpcomingMovieDetails();
		assertTrue("Success", result.size() > 0);
	}

}
