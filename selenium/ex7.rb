require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 

driver.get 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'

 

dropdown=driver.find_element(:name,"dropdown")

option_list=dropdown.find_elements(:tag_name,"option")[3]
 
puts option_list.text


 

driver.quit