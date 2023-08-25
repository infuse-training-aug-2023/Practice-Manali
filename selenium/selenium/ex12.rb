
require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 


driver.manage.window.maximize

# driver.manage.window.minimize
# driver.manage.window.maximize


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

nav=driver.find_element(:id,"navbarNavAltMarkup")


# name=driver.find_element(:name,"name");

puts driver.title

# driver.get "https://practise.usemango.co.uk/contact"



# driver.navigate().to("https://practise.usemango.co.uk/wishlist");
# driver.navigate().back();
# driver.navigate().to("https://practise.usemango.co.uk/contact");
# driver.navigate().back();


# driver.navigate().to("https://practise.usemango.co.uk/products")

# searchproduct=driver.find_element(:id,"searchproduct")
# searchproduct.send_keys("airpod")

# driver.find_element(:css,"div:first-child.col-lg-3.col-md-4.col-sm-6.col-12.mt-3.d-flex.align-items-baseline.justify-content-center > select.px-3.py-1").click

sleep(2)
# driver.navigate().refresh();


# driver.save_screenshot("./ss.png")









# sleep(2)


driver.quit