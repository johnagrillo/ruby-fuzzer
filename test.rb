input = FIle.open(ARGV[0])
def function1
  return 1
end

def function2
  return 2
end

input = stdin.read(1)
puts input
if input == '7'
  throw  'I hate the number 7'
elsif input.ord % 2 == 0
  function1
else
  function2
end
exit!(0)


