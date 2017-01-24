# Files - exercises

require "pathname"

# 1
simple = File.read("simple_file.txt")
# puts simple

original = File.new("original_file.txt", "w+")
pn = Pathname.new(original)

puts pn.extname
# puts File.extname("simple_file.txt")
puts File::extname("sample_file.txt")

File.open(original, "a+") do |file|
    file.puts(simple)
end

puts File.read(original)

d = Dir.new(".")
while file = d.read do
    puts "#{file} has extention .txt" if File.extname(file) == ".txt"
end

pn2 = Pathname.new(".")
pn2.entries.each { |f| puts "#{f} has extention .txt" if f.extname == ".txt"}