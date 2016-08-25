orig_array = []
new_array = []
arr_size = 12
j = arr_size - 1
for i in 0..j
  orig_array[i] = rand(10)
  new_array[j] = orig_array[i]
  j = j - 1
end
puts "El array original"
print orig_array
puts "\nEl array invertido"
print new_array
print"\n"
