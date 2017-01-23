# Arrays - exercises

# 1
arr = [1, 3, 5, 7, 9, 11]
number = 3
number2 = 35

def find_number(num, arr)
  arr.include?(num)
end

puts find_number(number, arr)
puts find_number(number2, arr)


# 2
# returns 1
# returns [1, 2, 3]

# 3
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr.last.first
arr.flatten!
puts arr[3]


# 4
# 3, error, 8


# 5
# e, A, nil


# 6
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

# 7
numbers = [2, 5, 7, 12, 17, 25]
new_numbers = numbers.map { |n| n * 2 }

p numbers
p new_numbers
