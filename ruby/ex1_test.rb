require 'test/unit'
require_relative 'ex1'

# Define test class
class TestAvgMethod < Test::Unit::TestCase
  def test_avg
    input1 = "SSS-10.00-20.00\n"
    input2 = "AAA-5.00-8.00\n"

    calculator1 = AverageCalculator.new(input1)
    calculator2 = AverageCalculator.new(input2)

    assert_equal("15.00", calculator1.calculate_and_print_average)
    assert_equal("6.50", calculator2.calculate_and_print_average)
  end
end

