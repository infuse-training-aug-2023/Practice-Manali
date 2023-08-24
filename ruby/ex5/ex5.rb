require 'json'

class FileOperations
  def initialize(data)
    @data = data
  end

  def save_data_to_file(file_path)
    File.open(file_path, "w") do |file|
      file.write(JSON.pretty_generate(@data))
    end
    puts "Data saved to #{file_path}"
  end

  def update_data_and_save(file_path)
    json_data = File.read(file_path)
    data = JSON.parse(json_data)

    full_name = "#{data["first_name"]} #{data["middle_name"]} #{data["last_name"]}".strip

    data["full_name"] = full_name
    data.delete("first_name")
    data.delete("middle_name")
    data.delete("last_name")

    File.open(file_path, "w") do |file|
      file.write(JSON.pretty_generate(data))
    end
    puts "Data updated and saved to #{file_path}"
  end

  def create_new_file_with_name(input_file_path)
    input_data = JSON.parse(File.read(input_file_path))

    full_name = input_data["full_name"]

    timestamp = Time.now.utc.strftime("%Y-%m-%d_%H-%M-%S")
    new_file_name = "#{full_name.gsub(' ', '_')}_#{timestamp}.json"

    File.open(new_file_name, "w") do |file|
      file.write(JSON.pretty_generate(input_data))
    end
    puts "New file created: #{new_file_name}"
  end
end

data = {
  "first_name" => "Nicole",
  "middle_name" => "Marie",
  "last_name" => "Smith",
  "age" => 25,
  "salary" => 25552.67
}

person1 = FileOperations.new(data)

file_path = "data.json"
person1.save_data_to_file(file_path)
person1.update_data_and_save(file_path)
person1.create_new_file_with_name(file_path)


