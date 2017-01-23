# Arrays

# sample array - can hold any combination of data and types of data
# Array basics
items = ['hat', 'net', 'pen', 'pen', 'item', 'stuff', 'thing']
puts items.length # number of items in the array
puts items.first # first item in the array
puts items.last # last item in the array
puts items[2] # gets item in array at index number


# Modifying an array
# the pop method modifies the array by removing the last item - changing the original array in the process
puts items.pop
puts items.length

# push method adds to the array
items.push('new item')
items << 'something else' # another way to push an item to an array
puts items.length


# Map - iterates over an array applying a block & creating a new array with results
names = %w[bob hal kal jim vin lue sal mel]
new_names = []
names.map { |n| new_names.push(n.capitalize) }
# puts new_names

# collect does same thing as map - and like map doesn't modify the array
items.map { |i| puts "- " + i }


# delete_at method will remove item at specific index
puts items.delete_at(4)
puts items.length


# delete method will remove item matching the content
puts items.delete('hat')
puts items.length

# uniq will iterate through array and return a new array with duplicates removed
puts items.uniq
puts items.length

# adding the bang operator - ! - will allow the uniq method to modify the original array
puts items.uniq!
puts items.length

# iterating over an array - already seen each
i = 1
items.each do |item|
  puts "#{i}. #{item}"
  i += 1
end

# select method will iterate through an array and return an array with items that match the comparison argument
puts items.select { |item| item.length > 5 }

# unshift method adds an item to the beginning of the array
puts items.unshift('cap')
puts "array includes: #{items}"

# include? method will return a boolean if the array includes the item or not
puts items.include?('hat')
puts items.include?('cap')

# flatten array will take a multi-dimensional array and return a one-dimensional array
stuff = [[1, 2], [5, 6], 7, 10]
stuff.flatten!
puts "flat - #{stuff}"

# each_index returns the index number of each array item
items.each_index { |i| puts i + 1}

# each_with_index returns the value and index of each array item
items.each_with_index { |val, i| puts "#{i + 1}: #{val}" }

# sort method will sort the items in the array. Use ! to make the sort permanent
puts items.sort!

# each vs. map
# each is used for iteration and map is used for modification (returns a new array with modifications - can assign to another array)
stuff.each { |s| puts "item = #{s}" }

more_stuff = stuff.map { |s| s * 2 }
puts "#{stuff}"
puts "#{more_stuff}"