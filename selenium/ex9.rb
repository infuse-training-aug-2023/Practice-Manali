require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 

driver.get 'https://cosmocode.io/automation-practice-webtable/'

countries=driver.find_element(:id,"countries")
thead=countries.find_element(:tag_name,"tr")
puts thead.text

driver.quit