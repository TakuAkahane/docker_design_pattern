hello = lambda do
  puts('Hello')
  puts('I am inside a proc')
end

hello.call

####################################################################################################

name = 'John'
proc = Proc.new do
  name = 'Mary'
end

proc.call
puts(name)

####################################################################################################

hello = lambda {
  puts('Hello, I am inside a proc')
}

hello = lambda {puts('Hello, I am inside a proc')}

####################################################################################################

return_24 = lambda {24}
puts(return_24.call)

####################################################################################################

n = multiply.call(20, 3)
puts(n)
n = multiply.call(10, 50)
puts(n)

####################################################################################################

def run_it
  puts('Before the yield')
  yield
  puts('After the yield')
end

def run_it
  puts('Hello')
  puts('Coming to you from inside the block')
end

# Before the yield
# Hello
# Coming to you from inside the block
# After the yield

####################################################################################################

def run_it_with_parameter
  puts('Before the yield')
  yield(24)
  puts('After the yield')
end

def run_it_with_parameter
  puts('Hello from inside the proc')
  puts("The value of x is #{x}")
end

# Before the yield
# Hello from inside the proc
# The value of x is 24
# After the yield

####################################################################################################

def run_it_with_parameter(&block)
  puts('Before the yield')
  block.call(24)
  puts('After the yield')
end

my_proc = lambda {|x| puts("The value of x is #{x}")}
run_it_with_parameter(&my_proc)
