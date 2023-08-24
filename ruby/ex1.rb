class AverageCalculator
  def initialize(input_string)
    @input_string = input_string
  end

  def calculate_and_print_average
    avg = calculate_average
    formatted_number=avg.round(2)
    puts formatted_number
    formatted_number
  end

  private
  def calculate_average
    first_part, second_part, third_part = @input_string.split('-')
    first_part = first_part.strip

    if !is_float?(second_part) && !is_float?(third_part) && first_part.length>3
      puts "#{@input_string} is not in a valid format."
      exit
    end
 
    (second_part.to_f + third_part.to_f) / 2
  end

  def is_float?(str)
    !!Float(str)
  rescue ArgumentError, TypeError
    false
  end

end


puts "Enter input string (e.g., SSS-XX.XX-YY.YY):"
input_string = gets.chomp
calculator = AverageCalculator.new(input_string)
calculator.calculate_and_print_average







