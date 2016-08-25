print "Escriba numero final de la serie: "
final = gets.chomp.to_i
par = []
impar = []
j = k = 0

for i in 1..final
  if i % 2 == 0 then
    par[j] = i
    j = j + 1
  else
    impar[k] = i
    k = k + 1
  end
end
puts "impares:"
print impar
print "\n"
puts "pares:"
print par
print "\n"
