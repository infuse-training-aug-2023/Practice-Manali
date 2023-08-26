require 'test/unit'
require_relative 'ex4'  

class TestSportsHandler < Test::Unit::TestCase
  def setup
    @sports_handler = SportsHandler.new
  end

  def test_skip_sports
    sports = ['Cricket', 'TT', 'Football', 'Hockey']
    skip = 2
    expected_result = ['3:Football', '4:Hockey']

    result = @sports_handler.skip_sports(sports, skip)
    assert_equal(expected_result, result)
  end
end
