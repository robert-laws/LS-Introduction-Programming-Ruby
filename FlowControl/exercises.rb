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

# exercises

# 1
# false, false, false, true, true

# 2
def more_than_ten(input)
    if(input.length > 10)
        input.upcase
    else
        "not longer than 10 characters"
    end
end

puts more_than_ten("hello people!")

# 3
puts "Enter a number..."
number = 5
if(number >= 0 && number <= 50)
    puts "between 0 and 50"
elsif(number >= 51 && number <=100)
    puts "between 51 and 100"
elsif(number > 100)
    puts "greater than 100"
else
    puts "something else"
end

# 4
# FALSE, Did you get it right?, Alright now!

# 5
def check_number
    puts "Enter a number..."
    number = gets.chomp.to_i
    if(number >= 0 && number <= 50)
        puts "between 0 and 50"
    elsif(number >= 51 && number <=100)
        puts "between 51 and 100"
    elsif(number > 100)
        puts "greater than 100"
    else
        puts "something else"
    end
end

def check_the_number(n)
    case n
    when 0..50
        puts "#{n} between 0 and 50"
    when 51..100
        puts "#{n} between 51 and 100"
    else
        if n < 0
            puts "#{n} is a negative number"
        else
            puts "#{n} greater than 100"
        end
    end
end

check_the_number(-10)
check_the_number(20)
check_the_number(74)
check_the_number(350)

# 6
# add the word "end" after the last "puts" for the if..else statement