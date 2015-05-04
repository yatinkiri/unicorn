

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class Loginnsignup {
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
  public void testLoginnsignup() throws Exception {
    driver.get(baseUrl + "/SpringMVC/Homepage");
    driver.findElement(By.xpath("//div[@id='myCarousel']/ol/li[3]")).click();
    driver.findElement(By.linkText("Signup")).click();
    driver.findElement(By.id("firstname1")).clear();
    driver.findElement(By.id("firstname1")).sendKeys("John");
    driver.findElement(By.id("lastname1")).clear();
    driver.findElement(By.id("lastname1")).sendKeys("Smith");
    driver.findElement(By.id("emailid1")).clear();
    driver.findElement(By.id("emailid1")).sendKeys("hello123");
    driver.findElement(By.id("emailid1")).clear();
    driver.findElement(By.id("emailid1")).sendKeys("hello123@123");
    driver.findElement(By.id("nm1")).clear();
    driver.findElement(By.id("nm1")).sendKeys("john");
    driver.findElement(By.id("nm1")).clear();
    driver.findElement(By.id("nm1")).sendKeys("john@");
    driver.findElement(By.id("password1")).clear();
    driver.findElement(By.id("password1")).sendKeys("hello");
    driver.findElement(By.id("retype_pass1")).clear();
    driver.findElement(By.id("retype_pass1")).sendKeys("hello");
    driver.findElement(By.id("retype_pass1")).clear();
    driver.findElement(By.id("retype_pass1")).sendKeys("hjkda");
    driver.findElement(By.id("retype_pass1")).clear();
    driver.findElement(By.id("retype_pass1")).sendKeys("hello");
    driver.findElement(By.id("cityname1")).clear();
    driver.findElement(By.id("cityname1")).sendKeys("Charlotte");
    driver.findElement(By.id("btn-signup")).click();
    driver.findElement(By.linkText("Click Here to continue ...")).click();
    driver.findElement(By.linkText("Login")).click();
    driver.findElement(By.id("login-username")).clear();
    driver.findElement(By.id("login-username")).sendKeys("john@");
    driver.findElement(By.id("login-password")).clear();
    driver.findElement(By.id("login-password")).sendKeys("hello");
    driver.findElement(By.id("btn-login")).click();
    driver.findElement(By.linkText("Logout")).click();
  }

  @After
  public void tearDown() throws Exception {
    driver.quit();
    String verificationErrorString = verificationErrors.toString();
    if (!"".equals(verificationErrorString)) {
      fail(verificationErrorString);
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
