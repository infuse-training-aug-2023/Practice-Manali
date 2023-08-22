class HashManipulator
    def initialize
      @hash = { 12345 => 50, 54321 => 75, 98765 => 30}
    end
  
    def add_key_value_pair(key, value)
      @hash[key] = value
    end
  
    def retain_integer_keys
      @hash.select! { |key, _| key.is_a?(Integer) }
    end
  
    def delete_even_keys
      @hash.delete_if { |key, _| key.even? }
    end
  
    def display_hash
      puts @hash
    end
  end
  
  # Create an instance of the class
  hash_manipulator = HashManipulator.new
  
  hash_manipulator.add_key_value_pair(543121, 100)
  
  hash_manipulator.retain_integer_keys
  
  hash_manipulator.delete_even_keys
  
  hash_manipulator.display_hash
  