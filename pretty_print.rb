require 'json'
require 'pry'

puts "input filename"
start = gets.chomp
puts "output filename"
finish = gets.chomp

begin
  input = File.read(start)
  json = JSON.parse(input)

  output = File.open(finish, 'w')
  output.write(JSON.pretty_generate(json))
ensure
  output.close unless output.nil?
end
