# Variables
# used to store information/assign value that can be moved, manipulated, and modified

first_name = "Bob"
last_name = "Cobb"

# Getting data from the user
# your_name = gets.chomp # assigns input to your_name and removes line return with chomp

# Variable scope - is defined by a block - {} or "do end"

name = "kal" # initialized in the outer scope
4.times do |n|
    name = "jim" # variable is accessible inside the block
    item = "pencil"
end
puts name # remains accessible
# puts item # variable item is not accessible because variable was initialized within the block scope

a = 4
def update
    a = 10
end
puts a # returns 4
puts update # returns 10
puts a # returns 4 - method update creates its own scope separate from the main execution flow

arr = [1, 2, 3]
for i in arr do
    a = 10
end
puts a # "a" is accessible because the for...do/end did not create a new inner scope inaccessible to the outer scope

# Types of Variables
# Constants, Global Variables, Class Variables, Instance Variables, and Local Variables

# Constants created by capitalizing every letter, cannot be declared in methods, and are available throughout all application scopes
BIRTHDATE = "May 4, 1980"

def show_birthday
    puts BIRTHDATE
end
show_birthday

# Global Variables are declared with a $ before the variable name - are available throughout the application, overriding all scope boundaries
$database_name = "app_database"

# Class Variables are declared by using two @@ symbols before the variable name - available by instances of a class and the class itself, useful when a variable is needed by the class, but not each instance needs a unique value
@@user_app = "new_app"

# Instance Variables are declared with one @ symbol - available throughout the current instance of the parent class
@location = "home"

# Local Variable declared by using lowercase letters - obey all scope boundaries
thing = "hat"

# Exercises

# 1
# see name.rb

# 2
# see age.rb

# 3
# see name.rb

# 4
# see name.rb

# 5
# The first example, the times...do/end loop prints the value 3 for x, because x is defined in the outer scope and modified within the code block
# The second example, the times...do/end loop prints an error, because the variable x is defined within the block's inner scope and is not accessible to the outer scope

# 6
# the variable 'shoes' was defined within a scope that is not accessible to the outer scope - from where it is trying to be called.