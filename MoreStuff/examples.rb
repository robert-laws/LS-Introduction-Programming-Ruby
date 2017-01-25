# More examples

def has_word_ball?(string)
  if string =~ /ball/
    puts "matches"
  else
    puts "no match"
  end
end

has_word_ball?("basketball")
has_word_ball?("soccer")
has_word_ball?("volleyball")
has_word_ball?("football")


if /h/.match("howdy")
  puts "match!"
end

puts Math.sqrt(64)


# doesn't mutate the caller - and the memory space
a = "item"
b = a
a = "new thing"
# b remains 'item'

c = "stuff"
d = c
c << " and items"
# mutates the caller, changing d along with c


# Blocks and Procs

# Blocks
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

take_block { puts "Hello!" }


def new_block(number, &block)
  block.call(number)
end

number = 21
new_block(number) { |num| puts "Block being called, number #{num}" }

# Procs
say = Proc.new do
  puts "saying something..."
end

say.call

# talk = Proc.new do |name|
#   puts "Talking with #{name}"
# end

talk = Proc.new { |name| puts "Hello #{name}" }

talk.call("Vin")

# Procs - passed in as methods
def take_proc(proc)
  [1, 3, 5].each do |n|
    proc.call(n)
  end
end

proc = Proc.new do |number|
  puts "#{number}. This is a proc!"
end

take_proc(proc)


# Exception Handling

names = ["bob", nil, "kalvin", "joye"]
names.each do |n|
  begin
    puts "#{n} has a name with #{n.length} letters."
  rescue => exception
    puts "Error happened: #{exception}"
  end
end

# can add rescue in one-liners code
zero = 0
zero.each { |el| puts el } rescue puts "Error here"

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)


def try_index(arr, index)
  begin
    puts arr[index]
  rescue
    puts "error..."
  end
end

try_index(names, 8)