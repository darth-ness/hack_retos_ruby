# puts "Escribir palabrra para verificar palindromo: "
# original = gets.chomp
# i = original.length
# j = 0
# nuevo = []
# # puts i
#
# while i > 0
#   nuevo[j] = original[i-1]
#   i = i - 1
#   j = j + 1
# end
# # puts nuevo
# # puts original
#
# i = original.length
# while  i >= 0
#   if original[i] != nuevo[i]
#     puts "La palabra NO ES palindromo"
#   end
# end
#
# if nuevo == original
#   puts "La palabra ES palindromo"
# else
# end

puts "Escribir palabra para verificar palindromo: "
original = gets.chomp
nueva = ""
long = original.length

while long > 0
  long = long - 1
  nueva = nueva + original[long]
end

if nueva == original
  puts "La palabra ES palindromo"
else
  puts "La palabra NO ES palindromo"
end
