# Hashes - Exercises

# 1
family = { uncles: ["bob", "joe", "steve"], sisters: ["jane", "jill", "beth"], brothers: ["frank","rob","david"], aunts: ["mary","sally","susan"] }

family_arr = []
family.select do |k, v|
    if k == :sisters || k == :brothers
        family_arr.push(v)
    end
end

p family_arr.flatten!

# 2
person = { name: "Bob", age: 41 }
location = { home: "Denver", house_type: "Townhouse" }

p person.merge(location) # merge without the ! - bang operator does not perserve the merge
p person

person.merge!(location) # with the ! - bang operator, the merge is perserved
p person

# 3
person.keys.each { |k| puts "#{k} is a key" } # just keys
person.values.each { |v| puts "#{v} is a value" } # just values
person.each do |k, v|
    puts "#{k} is the key for #{v}" # both keys and values
end


# 4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]


# 5
person.select do |k, v|
    if v == "Bob"
        puts "Matched value: #{v}, having key: #{k}"
    end
end

p person.has_value?("Bob")


# 6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end


# 7
# the first hash uses a symbol for the key, the second hash uses a string for the key


# 8
# Answer B