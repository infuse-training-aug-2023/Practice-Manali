require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
driver.get 'https://www.globalsqa.com/demo-site/sliders/#Steps'

wait = Selenium::WebDriver::Wait.new(timeout: 20)
iframe= driver.find_element(:xpath,'//*[@id="post-2673"]/div[2]/div/div/div[3]/p/iframe')
driver.switch_to.frame iframe;
slider = wait.until { driver.find_element(:id, "slider") }
slider_pointer = slider.find_element(:tag_name, "span")
slider_pointer.send_keys(:right)
slider_value = driver.find_element(:id, "amount")
print slider_value.attribute("value")
driver.quit