$: << "../lib"
require_relative('../../lib/afl')

def function1
  return 1
end

def function2
  return 2
end

AFL.init

input = File.open(ARGV[0])

AFL.with_exceptions_as_crashes do
  input = input.read(1)

  puts input.to_s
  
  if input == '7'
    raise 'I hate the number 7'
  elsif input.ord % 2 == 0
    function1
  else
    function2
  end
  exit!(0)
end
