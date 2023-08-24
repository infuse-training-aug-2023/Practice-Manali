require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 

driver.get 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'

 

dropdown=driver.find_element(:name,"multipleselect[]")

dropdown = Selenium::WebDriver::Support::Select.new(dropdown)
options= dropdown.options()



value_to_select=2
selected_option=options[value_to_select].click

puts options.value

 
puts selected_option.text


 

driver.quit