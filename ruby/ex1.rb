class AverageCalculator
    def initialize(input_string)
      @input_string = input_string
    end
  
    def calculate_and_print_average
      avg = calculate_average
      formatted_number = format('%.2f', avg)
      puts formatted_number
      formatted_number
    end
  
    private
  
    def calculate_average
      a = @input_string.split('-')
      (a[1].to_f + a[2].to_f) / 2
    end
  end
  
  # Example usage
  input_string = gets.chomp
  calculator = AverageCalculator.new(input_string)
  calculator.calculate_and_print_average
  