print ARGV[0]
puts

def function1
  return 1
end

def function2
  return 2
end

file = File.open(ARGV[0])
out = realines(file)

$stderr.puts file, out.size

out.each do |a|
  puts aaa
end





