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