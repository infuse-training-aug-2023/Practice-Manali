require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome


driver.get 'https://www.google.com/'



input_id="APjFqb"

input =driver.find_element(:id,input_id)

input.send_keys("dog")

input.send_keys(:enter)

sleep(5)









