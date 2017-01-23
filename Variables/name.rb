# name.rb

puts "What is your name?"
name = gets.chomp

puts "Very nice to meet you, #{name}!"


# printing the name 10 times without multiple puts
10.times do
    puts name
end


# asking user for their first_name and last_name - printing both together

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Nice to meet you, #{first_name} #{last_name}."