require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome

driver.get 'https://practise.usemango.co.uk'

button=driver.find_element(:id,"showmorebtn")
button.click




sleep(5)
driver.quit


