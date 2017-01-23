# Arrays

names = %w[bob hal kal jim vin lue sal mel]
new_names = []
names.map { |n| new_names.push(n.capitalize) }
puts new_names

# Map - iterates over an array applying a block & creating a new array with results