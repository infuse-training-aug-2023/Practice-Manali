require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 
driver.get 'https://letcode.in/forms'
dropdown_list=driver.find_element(:xpath,'//select[starts-with(.,"AfghanistanÅland IslandsAlbaniaAlgeriaAmerican")]')

dropdown = Selenium::WebDriver::Support::Select.new(dropdown_list)
options= dropdown.options()
# puts dropdown.first_selected_option().text
options.each do |values|
   puts values.text
end

 

driver.quit