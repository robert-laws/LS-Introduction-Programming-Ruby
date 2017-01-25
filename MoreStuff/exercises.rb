# MoreStuff - exercises

# 1
def check_match(word)
    if /lab/.match(word)
        puts word
    else
        puts "not matching"
    end
end

check_match("laboratory")
check_match("experiment")
check_match("Pans Labyrinth")
check_match("elaborate")
check_match("polar bear")

# 2 prints nothing - no .call method present

# 3 exception handling - is the process of catching errors in the running of the program, it solves the problem of safely dealing with errors without having the program crash

# 4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5
# the parameter for the execute method expects a block - which requires the & symbol to properly pass it to the method