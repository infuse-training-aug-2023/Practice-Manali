
require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
$driver=Selenium::WebDriver.for :chrome
 




def get_data(x, y)
  $driver.get "https://the-internet.herokuapp.com/tables"

  table = $driver.find_element(:id, "table1")
  table_body = table.find_element(:tag_name, "tbody")
  rows = table_body.find_elements(:tag_name, "tr")

  rows.each_with_index do |row, index|
    if (y == index)
      cols = row.find_elements(:tag_name, "td")

      cols.each_with_index do |ele, i|
        if (x == i)
          print ele.text
        end
      end
    end
    
  end

  # puts rows[y].find_elements(:tag_name, "td")[x].text
  $driver.quit
end

  get_data(1, 3)