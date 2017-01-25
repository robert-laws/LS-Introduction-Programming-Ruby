# Flow Control

# use of conditionals to control the flow of the program

# comparison operators - <, >, <=, >=, ==, !=, &&, ||

x = 5
if x == 5
    puts "five"
else
    puts "not five"
end

puts "not four" if x != 4
puts "is five" if x == 5

# combining expressions
puts val = (4 == 8) || (4 > 3)

puts val2 = (4 == 4) && (4 > 3)

puts val3 = !(5 > 3)

# order of precedence
# first - <=, <, >, >= - Comparison
# second - ==, != - Equality
# third - && - Logical AND
# fourth - || - Logical OR

if 5 <= 20 == 5 && 4 > 12 || 2 < 5
    puts "passes conditions"
else
    puts "does not pass conditions"
end

# ternary operator
# shorthand way of writing if else statements using ? and :
puts 5 > 14 ? "five is bigger" : "five is less"


# case statements
f = 7

case f
when 4
    puts "four"
when 5
    puts "five"
when 6
    puts "six"
else
    puts "something else"
end

g = 4
result = case g
    when 1
        "result is 1"
    when 2
        "result is 2"
    when 3
        "result is 3"
    else
        "another value"
    end

puts result