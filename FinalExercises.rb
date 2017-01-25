# Final exercises

# 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |n|
    puts n
end

# 2
arr.each do |n|
    if n > 5
        puts n
    end
end

# 3
# items.select { |item| item.length > 5 }
odd = []
arr.select do |n|
    if n % 2 != 0
        odd.push(n)
    end
end
p odd

# 4
arr.push(11)
# arr.insert(0, 0)
arr.unshift(0)
p arr

# 5
# arr.delete(11)
arr.pop
arr.push(3) # arr << 3
p arr

# 6
vals = [1, 2, 2, 3, 4, 5, 6, 7, 7, 4, 2, 8]
vals.uniq!
p vals

# 7
# Arrays are collections that are ordered by an index for the array, Hashes are collectionso of key-value pairs

# 8
items = { :one => "hat", :two => "ball", :three => "can" }
items2 = { one: "hat", two: "ball", three: "can" }

# 9
h = {a:1, b:2, c:3, d:4}
# 9.1
puts h[:b]

# 9.2
# h.merge!({e:5})
h[:e] = 5
p h

# 9.3
# h.each do |k, v|
#     if v < 3.5
#         h.delete(k)
#     end
# end

h.delete_if { |k, v| v < 3.5 }
p h

# 10
# 10.1 - yes
# stuff = { :one => "hat", :two => "ball", :three => "can" }
# p stuff.values
stuff = { items: ["hat", "ball", "can"]}

# 10.2 - yes
more_stuff = [{item: "hat"}, {item: "ball"}, {item: "can"}]

# 11
# I like the twitter API for Ruby because is seems very easy for the beginner

# 12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]


# 14
contact_one_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contact_one = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

i = 0
fields.each do |key|
    contact_one["Joe Smith"][key] = contact_one_data[i]
    i += 1
end

p contact_one

# 15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
new_arr = arr.delete_if { |val| val.start_with?("s")}
p new_arr

arr2 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
new_arr2 = arr2.delete_if { |val| val.start_with?("s", "w")}
p new_arr2

# 16
a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
b = a.map { |item| item.split(" ")}
p b.flatten!

# 17
# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
# hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
# result is "These hashes are the same!" - Different ways to create a hash - all have same key, value data