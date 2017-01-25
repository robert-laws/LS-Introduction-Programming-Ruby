# Exercises - Loops and Iterators

# 1
# x = [1, 2, 3, 4, 5]


# 2
# puts "Write STOP to end this question...."
# a = gets.chomp
# while a != "STOP" do
#     puts "try again..."
#     a = gets.chomp
# end


# 3
things = ["fun", "sun", "land", "travel", "play"]

things.each_with_index do |t, i|
    puts "#{i + 1}. #{t}"
end

# 4

def to_zero(x)
    if x == 0
        puts "reached zero"
    else
        x = x - 1
        puts x.to_s
        to_zero(x)
    end
end

to_zero(5)