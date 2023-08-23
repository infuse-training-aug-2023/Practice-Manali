
require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 


driver.manage.window.maximize
driver.manage.window.minimize
driver.manage.window.maximize


wait = Selenium::WebDriver::Wait.new(:timeout => 10)

driver.manage.timeouts.implicit_wait = 3



driver.get "https://practise.usemango.co.uk/"

login_click=driver.find_element(:css,"#navbarNavAltMarkup > div:nth-child(2) > a:nth-child(1)")
login_click.click
username=driver.find_element(:id,"exampleInputEmail1");
password=driver.find_element(:id,"exampleInputPassword1");


username.send_keys("manali")
password.send_keys("shwqytry")

submit=driver.find_element(:css,"#root > div > form > center > button").click

puts driver.title




driver.navigate().to("https://practise.usemango.co.uk/wishlist");
driver.navigate().back();
driver.navigate().to("https://practise.usemango.co.uk/contact");
driver.navigate().back();
# driver.navigate().refresh();

driver.navigate().to("https://www.globalsqa.com/demo-site/sliders/#Steps")

driver.save_screenshot("./ss.png")



wait = Selenium::WebDriver::Wait.new(:timeout => 10)





iframe= driver.find_element(:xpath,'//*[@id="post-2673"]/div[2]/div/div/div[3]/p/iframe')
driver.switch_to.frame iframe;


slider = wait.until { driver.find_element(:id, "slider")}

driver.action.drag_and_drop_by(slider, 10, 0).perform

amount = driver.find_element(:id, "amount")
puts amount.attribute("value")

sleep(2)
driver.close

driver.quit