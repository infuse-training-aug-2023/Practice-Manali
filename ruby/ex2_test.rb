require 'test/unit'
require_relative 'ex2'  

class TestArrayManipulator < Test::Unit::TestCase
  def setup
    @array_manipulator = ArrayManipulator.new
    @arr = [9, 5, 1, 2, 3, 4, 0, -1]
  end

  def test_element_at
    assert_equal 1, @array_manipulator.element_at(@arr, 2)
    assert_equal 9, @array_manipulator.element_at(@arr, 0)
    assert_equal -1, @array_manipulator.element_at(@arr, -1)
  end

  def test_inclusive_range
    assert_equal [1, 2, 3], @array_manipulator.inclusive_range(@arr, 2, 4)
    assert_equal [5, 1, 2, 3, 4], @array_manipulator.inclusive_range(@arr, 1, 5)
  end

  def test_non_inclusive
    assert_equal [1, 2, 3], @array_manipulator.non_inclusive(@arr, 2, 5)
    assert_equal [5, 1, 2, 3], @array_manipulator.non_inclusive(@arr, 1, 5)
  end

  def test_start_and_length
    assert_equal 6, @array_manipulator.start_and_length(@arr, 2)
    assert_equal 8, @array_manipulator.start_and_length(@arr, 0)
    assert_equal 1, @array_manipulator.start_and_length(@arr, -1)
  end
end
