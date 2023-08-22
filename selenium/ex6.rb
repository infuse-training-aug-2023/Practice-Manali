require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 

driver.get 'https://letcode.in/forms'

 

dropdown_list = driver.find_element(:css, 'div:nth-child(5).columns.container > div:last-child.column.is-half > div.field > div.control')

option_list = dropdown_list.find_elements(:tag_name, "option")

 

option_list.each do |values|

   puts values.text

end

 

driver.quit