
class Shop

    def initialize
    
        Selenium::WebDriver::Chrome::Service.driver_path='G:/selenium training/drivers/chromedriver.exe'
      @driver = Selenium::WebDriver.for :chrome
      @driver.manage.window.maximize
      @driver.get 'https://www.saucedemo.com/v1/'
  
    end
  
    def login(username, password)
  
      username_field = @driver.find_element(id: 'user-name')
      password_field = @driver.find_element(id: 'password')
      login_button = @driver.find_element(id: 'login-button')
      
      username_field.send_keys(username)
      password_field.send_keys(password)
      login_button.click
  
    end
  
    def add_to_cart(item_name)
  
      dropdown = @driver.find_element(xpath: '//*[@id="inventory_filter_container"]/select')
      select = Selenium::WebDriver::Support::Select.new(dropdown)
      select.select_by(:value, "za")
  
      add_to_cart_button = @driver.find_element(xpath: '//*[@id="inventory_container"]/div/div[4]/div[3]/button')
      add_to_cart_button.click
  
    end

    def ss()
        @driver.save_screenshot("./screen.png")
    end
    
  end
  
  shop1= Shop.new
  shop1.login("standard_user", "secret_sauce")
  shop1.add_to_cart("Sauce Labs Backpack")
  shop1.ss()