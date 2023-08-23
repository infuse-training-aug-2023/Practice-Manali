require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome

driver.get 'https://demo.automationtesting.in/Register.html'

male_radio=driver.find_element(:css,"#basicBootstrapForm > div:nth-child(5) > div > label:nth-child(1) > input")
male_radio.click

movies_checkbox=driver.find_element(:id,"checkbox2")
movies_checkbox.click




sleep(5)
driver.quit


