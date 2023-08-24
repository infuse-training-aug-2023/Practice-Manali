require 'json'
require 'faker'

# Command line arguments
input_arg1, input_arg2 = ARGV

puts "Input argument 1: #{input_arg1}"
puts "Input argument 2: #{input_arg2}"

# Environment variables
env_var_value = ENV['MY_ENV_VARIABLE'] || 'Default Value'
puts "Environment variable MY_ENV_VARIABLE: #{env_var_value}"

# Generate fake data using Faker
puts "Fake Name: #{Faker::Name.name}"
puts "Fake Email: #{Faker::Internet.email}"

# JSON manipulation using the 'json' library
data = {
  name: Faker::Name.name,
  email: Faker::Internet.email
}

json_string = JSON.generate(data)
puts "JSON String: #{json_string}"

parsed_data = JSON.parse(json_string)
puts "Parsed JSON Data: #{parsed_data}"


# ruby script.rb argument1 argument2
