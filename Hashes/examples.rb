# Hashes - Examples

# older syntax
old_way = { :name => "Bob", :age => 42 }

# newer syntax
new_way = { name: "Bob", age: 42, color: "blue" }
another_hash = { location: "New York", month: "September" }

# remove from a Hash
puts new_way.delete(:color)

# retrieve information
puts new_way[:age]

# merge two hashes
new_way.merge!(another_hash)

# iterate over the hash
new_way.each do |k, v|
    puts "Item #{k} is #{v}."
end

def welcome(name, options={})
    if options.empty?
        puts "Hello, my name is #{name}"
    else
        puts "Hello, my name is #{name}, and I live in #{options[:location]}."
    end
end

welcome("Hal", new_way)
welcome("Kal", location: "Boston")

# hashes vs arrays
# use a hash for data that needs to be associated with particular labels
# use an array if order of the data is important
# use an array if a 'stack' or 'queue' structure is important


# hashes using the new declaration pattern use symbols as keys, the old way is used for any other type of keys
person = { "height" => "5 ft", "age" => 35, "place" => "Mexico" }
items = { 1 => "hat", 2 => "box", 3 => "pen", 4 => "lock", 5 => "cat" }

# has_key? - check if a hash has a specific key
puts items.has_key?(2)
puts items.has_key?(4)
puts new_way.has_key?(:location)

# select - logical selection with a hash
puts items.select { |k, v| k > 3 }

# fetch - return for matches of a particular key
puts person.fetch("place")

# to_a - returns an array version of the hash
arr_person = person.to_a
puts arr_person[0]

# retrieve the keys and values of a hash
p items.keys
p items.values

items.values.each_with_index { |v, k| puts "#{k + 1}. #{v}" }
