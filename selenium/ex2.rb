require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome

driver.get 'https://www.saucedemo.com/'

title=driver.title

puts title

sleep(5)
driver.quit


