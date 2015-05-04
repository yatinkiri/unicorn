package com.example.tests;

import com.thoughtworks.selenium.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
import java.util.regex.Pattern;

public class register {
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*chrome", "http://localhost:8000/SpringMVC/Homepage");
		selenium.start();
	}

	@Test
	public void testRegister() throws Exception {
		selenium.open("/SpringMVC/Homepage");
		selenium.click("//div[@id='myCarousel']/ol/li[3]");
		selenium.click("link=Signup");
		selenium.waitForPageToLoad("30000");
		selenium.type("id=firstname1", "John");
		selenium.type("id=lastname1", "Smith");
		selenium.type("id=emailid1", "hello123");
		selenium.type("id=emailid1", "hello123@123");
		selenium.type("id=nm1", "john");
		selenium.type("id=nm1", "john@");
		selenium.type("id=password1", "hello");
		selenium.type("id=retype_pass1", "hello");
		selenium.type("id=retype_pass1", "hjkda");
		selenium.type("id=retype_pass1", "hello");
		selenium.type("id=cityname1", "Charlotte");
		selenium.click("id=btn-signup");
		selenium.waitForPageToLoad("30000");
		selenium.click("link=Click Here to continue ...");
		selenium.waitForPageToLoad("30000");
		selenium.click("link=Login");
		selenium.waitForPageToLoad("30000");
		selenium.type("id=login-username", "john@");
		selenium.type("id=login-password", "hello");
		selenium.click("id=btn-login");
		selenium.waitForPageToLoad("30000");
		selenium.click("link=Logout");
		selenium.waitForPageToLoad("30000");
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}
}
