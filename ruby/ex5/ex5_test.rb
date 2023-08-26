require 'test/unit'
require_relative 'ex5'

class TestFileOperations < Test::Unit::TestCase
  def setup
    @data = {
      "name" => "Nicole Smith",
      "age" => 25,
      "salary" => 25552.67
    }
    @file_path = "data.json"
    @person = FileOperations.new(@data)
  end

  # def teardown
  #   File.delete(@file_path) if File.exist?(@file_path)
  # end

  def test_save_data_to_file
    @person.save_data_to_file(@file_path)
    assert File.exist?(@file_path)
  end

  def test_update_data_and_save
    @person.save_data_to_file(@file_path)
    @person.update_data_and_save(@file_path)

    updated_data = JSON.parse(File.read(@file_path))
    assert_nil updated_data["name"]
    assert_equal "Nicole", updated_data["first name"]
    assert_equal "Smith", updated_data["last name"]
  end

  def test_create_new_file_with_name
    @person.create_new_file_with_name(@file_path)
    new_file_path = @data["name"].gsub(' ', '') + '_'
    assert File.exist?(new_file_path)
  end
end
