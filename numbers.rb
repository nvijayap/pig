
puts "=> Creating datafile ..."
File.open("numbers.txt", "w") do |f|
  (0..10_000).each { |n| f.puts(n) }
end

# use local or mapreduce
puts "=> Running pig ..."
# `time pig numbers.pig >numbers.out 2>numbers.err` # default is mapreduce
`(time pig -x local numbers.pig) >numbers.out 2>numbers.err`
puts "=> STDOUT is in numbers.out and STDERR is in numbers.err"

