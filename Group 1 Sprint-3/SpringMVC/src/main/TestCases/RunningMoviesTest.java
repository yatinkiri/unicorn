package com.movies.Testcases;

import static org.junit.Assert.assertTrue;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import com.movies.controller.RunningMovies;

public class RunningMoviesTest {
	DbManager db = null;

	@Before
	public void setUp() throws Exception {
		db = new DbManager();
	}

	@Test
	public void test() throws Exception {
		ArrayList<RunningMovies> result = db.getMovieDetails();
		assertTrue("Success", result.size() > 0);
	}

}
