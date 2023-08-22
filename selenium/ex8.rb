require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 

driver.get 'https://www.globalsqa.com/demo-site/sliders/#Steps'



wait = Selenium::WebDriver::Wait.new(:timeout => 10)


iframe= driver.find_element(:xpath,'//*[@id="post-2673"]/div[2]/div/div/div[3]/p/iframe')
driver.switch_to.frame iframe;


slider = wait.until { driver.find_element(:id, "slider")}

driver.action.drag_and_drop_by(slider, 10, 0).perform

amount = driver.find_element(:id, "amount")
puts amount.attribute("value")

driver.quit