require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome

driver.get 'https://www.google.com/'


input_id="APjFqb"

search_bar =driver.find_element(:id,input_id)

search_bar.send_keys("cricket")

search_bar.send_keys(:enter)


sleep(5)


