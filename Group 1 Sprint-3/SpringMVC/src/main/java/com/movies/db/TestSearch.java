package com.movies.db;

import com.thoughtworks.selenium.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
import java.util.regex.Pattern;

public class TestSearch {
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*firefox", "http://localhost:8000/SpringMVC/Homepage");
		selenium.start();
	}

	@Test
	public void testSearch() throws Exception {
		//selenium.open("/SpringMVC/Homepage");
		//selenium.waitForPageToLoad("3000");
		selenium.open("http://localhost:8000/SpringMVC/Homepage");
		//selenium.open("/");
		selenium.waitForPageToLoad("30000");
		selenium.click("//img[@alt='signup']");
		selenium.waitForPageToLoad("30000");
		selenium.type("name=fname", "Tom");
		selenium.type("name=lname", "Payton");
		selenium.type("name=email", "tom@gmail.com");
		selenium.type("name=uname", "tom_123");
		selenium.type("name=pass", "uncmovies");
		selenium.type("name=city", "Charlotte");
		selenium.click("id=btn-signup");
		selenium.waitForPageToLoad("30000");
		selenium.click("link=Click Here to continue ...");
		selenium.waitForPageToLoad("30000");
		selenium.click("css=div.col-md-4 > a.btn.btn-default > img.img-thumbnail");
		selenium.waitForPageToLoad("30000");
		selenium.type("id=login-username", "tom_123");
		selenium.type("id=login-password", "uncmovies");
		selenium.click("id=btn-login");
		selenium.waitForPageToLoad("30000");
		selenium.click("css=img.img-thumbnail");
		selenium.waitForPageToLoad("30000");
		//selenium.waitForPageToLoad("30000");
		//selenium.click("//img[@alt='upcoming']");
		
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}
}
