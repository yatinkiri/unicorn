package com.movies.db;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Testcase2 {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
    driver = new FirefoxDriver();
    baseUrl = "http://localhost:8000/SpringMVC/Homepage";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void testCase() throws Exception {
	  System.out.println("Entered");
	  driver.get(baseUrl);
    //driver.get(baseUrl + "/SpringMVC/Homepage");
    driver.findElement(By.xpath("//img[@alt='signup']")).click();
    driver.findElement(By.name("fname")).clear();
    driver.findElement(By.name("fname")).sendKeys("Tom");
    driver.findElement(By.name("lname")).clear();
    driver.findElement(By.name("lname")).sendKeys("Payton");
    driver.findElement(By.name("email")).clear();
    driver.findElement(By.name("email")).sendKeys("tom@gmail.com");
    driver.findElement(By.name("uname")).clear();
    driver.findElement(By.name("uname")).sendKeys("tom_123");
    driver.findElement(By.name("pass")).clear();
    driver.findElement(By.name("pass")).sendKeys("uncmovies");
    driver.findElement(By.name("city")).clear();
    driver.findElement(By.name("city")).sendKeys("Charlotte");
    driver.findElement(By.id("btn-signup")).click();
    driver.findElement(By.linkText("Click Here to continue ...")).click();
    driver.findElement(By.cssSelector("div.col-md-4 > a.btn.btn-default > img.img-thumbnail")).click();
    driver.findElement(By.id("login-username")).clear();
    driver.findElement(By.id("login-username")).sendKeys("tom_123");
    driver.findElement(By.id("login-password")).clear();
    driver.findElement(By.id("login-password")).sendKeys("uncmovies");
    driver.findElement(By.id("btn-login")).click();
    driver.findElement(By.cssSelector("img.img-thumbnail")).click();
    driver.findElement(By.xpath("//img[@alt='upcoming']")).click();
  }

  @After
  public void tearDown() throws Exception {
    driver.quit();
    String verificationErrorString = verificationErrors.toString();
    if (!"".equals(verificationErrorString)) {
    	System.out.println("fail : "+ verificationErrorString);
      //fail(verificationErrorString);
    }
  }

  private boolean isElementPresent(By by) {
    try {
      driver.findElement(by);
      return true;
    } catch (NoSuchElementException e) {
      return false;
    }
  }

  private boolean isAlertPresent() {
    try {
      driver.switchTo().alert();
      return true;
    } catch (NoAlertPresentException e) {
      return false;
    }
  }

  private String closeAlertAndGetItsText() {
    try {
      Alert alert = driver.switchTo().alert();
      String alertText = alert.getText();
      if (acceptNextAlert) {
        alert.accept();
      } else {
        alert.dismiss();
      }
      return alertText;
    } finally {
      acceptNextAlert = true;
    }
  }
}
