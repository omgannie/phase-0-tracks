# Release 3: Hash in a Program
# Need details of Client
# Name (string)
# age (integer)
# number of children (integer)
# decor theme (string)
# number of rooms (integer)
# Do they have a yard (boolean)
# patio? (boolean)
# favorite colors? (string)
# budget? (integer)

details = {}

puts "Thanks for inquiring about our design services. Please fill out form below."
puts "What is your name?"
details[:name] = gets.chomp

puts "Nice to meet you, #{details[:name]}! How old are you?"
details[:age] = gets.to_i

puts "How many children do you have?"
details[:children] = gets.to_i

puts "What decor theme would you like?"
details[:theme] = gets.chomp

puts "Do you have a yard? (y/n)"
details[:yard] = gets.chomp

puts "How about a patio? (y/n)"
details[:patio] = gets.chomp

puts "What are your favorite color(s)?"
details[:colors] = gets.chomp.split('')

puts "What is your budget?"
details[:budget] = gets.to_i
