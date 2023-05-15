print ARGV[0]
puts

def function1
  return 1
end

def function2
  return 2
end

file = File.open(ARGV[0])
input = file.read

if input == '7'
  raise 'I hate the number 7'
elsif input.ord % 2 == 0
  function1
else
  function2
end





