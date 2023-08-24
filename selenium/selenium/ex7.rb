require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 
driver.get 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'

dropdown=driver.find_element(:name,"multipleselect[]")
dropdown = Selenium::WebDriver::Support::Select.new(dropdown)
options= dropdown.options()
value_to_select= 1

if value_to_select >= 0 && value_to_select < options.length
  dropdown.options[value_to_select].click
  selected_text = dropdown.first_selected_option.text
  puts "Selected Value: #{selected_text}"
else
  puts "Invalid value_to_select"
end

driver.quit