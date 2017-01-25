# Exercises - Flow Control

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