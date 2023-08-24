require 'test/unit'
require_relative 'ex3'  # Assuming the Calculator class is defined in 'calculator.rb'

class TestCalculator < Test::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  def test_addition
    result = @calculator.add(3, 5)
    assert_equal(8, result)
  end

  def test_subtraction
    result = @calculator.subtract(10, 4)
    assert_equal(6, result)
  end
end
