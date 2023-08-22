require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome

driver.get 'https://www.google.com/'

driver.manage.window.maximize

sleep(5)
driver.quit


