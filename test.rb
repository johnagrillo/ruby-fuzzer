$stderr.puts ARGV[0]
input = File.open(ARGV[0])
def function1
  return 1
end

def function2
  return 2
end

input = input.read(1)
$stderr.puts input

exit(-1)

if input == '7'
  raise 'I hate the number 7'
elsif input.ord % 2 == 0
  function1
else
  function2
end
exit!(0)


