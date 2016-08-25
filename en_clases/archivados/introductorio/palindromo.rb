puts "Escribir numero para verificar palindromo: "
original = gets.chomp.to_i

residuo = original
nuevo = 0

while residuo != 0
  unidad = residuo % 10
  nuevo = (nuevo * 10) + unidad
  residuo = (residuo - unidad) / 10
end

if nuevo == original
  puts "El numero ES palindromo"
else
  puts "El numero NO ES palindromo"
end
