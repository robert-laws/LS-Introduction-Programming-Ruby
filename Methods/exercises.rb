# Exercises - Methods
# 1
def greeting(name)
    "Welcome to the place, #{name}!"
end
puts greeting("Kal")

# 2
# 2, nil, "Joe", "four", nil

# 3
def multiply(n1, n2)
    n1 * n2
end

puts multiply(5, 4)

# 4 - method will print nothing - return ends method call before the puts is executed
def yell(words)
    words = words + "!!"
    puts words
end

yell("stuff")

# 5
# remove 'return' - prints Yippeee!!!!, returns nil

# 6
# the method expected two parameters and only one was provided