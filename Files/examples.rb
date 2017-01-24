# Files

# my_file = File.new("simple_file.txt", "w+") # creates a new file with read and write access
# my_file.close # closes the open file

# Code for choosing how a file will be handled
# ------------------------------------------------
# r: read-only (starts at beginning of file)
# w: write-only (if the file exists, overwrites everything in the file)
# w+: read and write (if the file exists, overwrites everything in the file)
# a+: read-write (if file exists, starts at end of file. Otherwise creates a new file). Suitable for updating files.

# Reading files
# ------------------------------------------------
# File.read("file_name") - Spits out entire contents of the file.
# File.readlines("file_name") - Reads the entire file based on individual lines and returns those lines in an array.

# Writing to files
# ------------------------------------------------
# can use puts or write - puts adds a line return and write does not add a line return

File.open("simple_file.txt", "w") { |file| file.puts("first line of text") } # { |file| file.write("first line of text") } # no line return
File.read("simple_file.txt")

content = ["Some more information for the file...", "Learning Ruby today!", "Some more stuff goes here"]

File.open("simple_file.txt", "a+") do |file|
    content.each do |c|
        file.puts(c)
    end
end

# File.readlines("simple_file.txt").each do |line|
#     puts line
# end

File.readlines("simple_file.txt").each_with_index do |line, index|
    puts "#{index + 1}: #{line}"
end

# Delete a file
File.new("test.txt", "w+")
File.delete("test.txt")