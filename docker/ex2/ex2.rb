require 'json'
require 'faker'

input_arg1, input_arg2 = ARGV.map(&:to_i) 
sum=input_arg1+input_arg2

puts "Input argument 1: #{input_arg1}"
puts "Input argument 2: #{input_arg2}"
puts "Addition of two : #{sum}"

env_var_value = ENV['ENV_VAR'] || 'Default Value'
puts "Environment variable MY_ENV_VARIABLE: #{env_var_value}"

puts "Fake Name: #{Faker::Name.name}"
puts "Fake Email: #{Faker::Internet.email}"

data = {
  name: Faker::Name.name,
  email: Faker::Internet.email
}

json_string = JSON.generate(data)
puts "JSON String: #{json_string}"

parsed_data = JSON.parse(json_string)
puts "Parsed JSON Data: #{parsed_data}"
