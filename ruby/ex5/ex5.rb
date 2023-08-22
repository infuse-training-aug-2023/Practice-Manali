require 'json'

class FileOperations
  def initialize(data)
    @data = data
  end

#1
  def save_data_to_file(file_path)
    File.open(file_path, "w") do |file|
      file.write(JSON.pretty_generate(@data))
    end
    puts "Data saved to #{file_path}"
  end

  # 2
  def update_data_and_save(file_path)
    json_data = File.read(file_path)
    data = JSON.parse(json_data)

    first_name, last_name = data["name"].split

    data["first name"] = first_name
    data["last name"] = last_name
    data.delete("name")

    File.open(file_path, "w") do |file|
      file.write(JSON(data))
    end
    puts "Data updated and saved to #{file_path}"
  end

  #3

  def create_new_file_with_name(input_file_path)
    input_data = JSON.parse(File.read(input_file_path))

    name = input_data["first name"]

    timestamp = Time.now.utc.strftime("%Y-%m-%d_%H-%M-%S")

    new_file_name = "#{name.gsub(' ', '')}_#{timestamp}.json"


    File.open(new_file_name, "w") do |file|
      file.write(JSON(input_data))
    end

  end
end


data = {
  "name" => "Nicole Smith",
  "age" => 25,
  "salary" => 25552.67
}

person1 = FileOperations.new(data)

file_path = "data.json"
person1.save_data_to_file(file_path)
person1.update_data_and_save(file_path)
person1.create_new_file_with_name(file_path)
