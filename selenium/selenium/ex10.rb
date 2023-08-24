require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
driver=Selenium::WebDriver.for :chrome
 
index = 1
driver.get "https://computer-database.gatling.io/computers"
table = driver.find_element(:tag_name, "table")

table_head = table.find_element(:tag_name, "thead")
header_row = table_head.find_element(:tag_name, "tr")
# header_row_data = header_row.find_elements(:tag_name, "th")
# puts header_row_data[index].text
table_body = table.find_element(:tag_name, "tbody")
table_body_rows = table_body.find_elements(:tag_name, "tr")
puts table_body_rows[index].text

# table_body_rows.each do |row|
#   puts row.find_elements(:tag_name, "td")[col].text
# end

