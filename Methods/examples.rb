# Methods

def greet
    # method logic goes here
    puts "Hello to you!"
end

def welcome(name)
    # method accepts one parameter - name
    puts "Welcome to the place " + name + "."
end

def hello(name='individual')
    # default parameter - if no value for the parameter is provide, a default value is used
    puts "nice to meet you, " + name + "."
end

hello("hal")


def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
puts some_method(a) # returns 7
puts a # returns 5

# mutating the caller - methods that permanently alter variables outside of their scope
arr = [1, 2, 3]
def mutate(array)
    array.pop
end

p "before the method: #{arr}"
mutate(arr)
p "after the method: #{arr}"

# methods and return - using the return keyword in a method will return the value of the executed line and exit the method without further execution
def get_word
    word = "hello"
    return word # this is returned from the method, the next line does not execute
    word = word + "!"
end
puts get_word


# method chaining - methods can be chained together to form complex expressions
person = "billy"
puts person.upcase.reverse


# methods can be passed to other methods as argument parameters
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def multiply(a, b)
    a * b
end

puts multiply(add(4, 6), subtract(7, 3))