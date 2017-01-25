# Loops and Iterators

# Loops
# while, do/while, and for loops are covered

# simple loop do with break

# i = 0
# loop do
#     i += 1
#     puts i
#     if i == 1
#         next
#     end
#     if i == 3
#         break
#     end
# end

# while loops
# x = 5
# while x >= 1
#     puts x
#     x -= 1
# end

# until loops
# y = 4
# until y == 0
#     puts y.to_s + " value"
#     y -= 1
# end

# do/while
# loop do
#     # puts "what is your favorite number?"
#     # n = gets.chomp.to_i
#     n = 3
#     if n > 5
#         break
#     end
# end

# # another variation - not recommended
# begin
#     # puts "What is your name?"
#     # answer = gets.chomp
#     answer = "hal"
# end while answer == "bob"


# for loops
z = 5
for i in 1..z do
    puts i.to_s + " times..."
end

vals = [1, 2, 3, 4, 5]
for i in vals do
    puts i
end


# conditions within loops
q = 0
while q <= 10
    if q.odd?
        puts q.to_s + " - condition"
    end
    q += 1
end

# Iterators

names = %w[hal bob kal jim vin sal mel]
names.each { |n| puts n }

x = 1
names.each do |n|
    puts "#{x}. #{n} is here"
    x += 1
end

# Recursion
# act of calling a method within itself

def doubler(start)
    puts start.to_s + " doubled..."
    if start < 10
        doubler(start * 2)
    end
end

doubler(2)

# fibonacci sequence
def fib(number)
    if number < 2
        number
    else
        fib(number - 1) + fib(number - 2)
    end
end

# puts fib(6)