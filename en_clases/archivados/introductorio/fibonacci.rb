puts "Indique el numero para Fibonacci:"
num = gets.chomp.to_i
serie = [0,1]

for i in 2..num do
  serie[i] = serie[i-1] + serie[i-2]
end

puts "El Fibonacci de #{num} es #{serie[num]}, y la serie seria:"
puts serie
