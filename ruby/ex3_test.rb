require 'test/unit'
require_relative 'ex3'

class TestHashManipulator < Test::Unit::TestCase
  def setup
    @hash_manipulator = HashManipulator.new
  end

  def test_add_key_value_pair
    # instance_variable_get method is used to retrieve the value of an instance variable for a given object
    @hash_manipulator.add_key_value_pair(543121, 100)
    assert_equal 100, @hash_manipulator.instance_variable_get(:@hash)[543121]
  end

  def test_retain_integer_keys
    @hash_manipulator.retain_integer_keys
    retained_keys = @hash_manipulator.instance_variable_get(:@hash).keys
    retained_keys.each do |key|
      assert_instance_of(Integer, key)
    end
  end

  def test_delete_even_keys
    @hash_manipulator.delete_even_keys
    assert_equal [12345, 54321, 98765], @hash_manipulator.instance_variable_get(:@hash).keys
  end
end
