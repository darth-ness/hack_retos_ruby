num_rand = []
arr_size = 12
j = arr_size - 1
num_range = 10
suma = promedio = 0
min = num_range + 1
max = 0

for i in 0..j
  num_rand[i] = rand(num_range)
  suma = suma + num_rand[i]
end
for i in 0..j
  if num_rand[i] > num_rand[i+1]
    if num_rand[i] > max
      max = num_rand[i]
    end
    if num_rand[i+1] < min
      min = num_rand[i+1]
    end
  end
  elsif num_rand[i] < num_rand[i+1]

  end
end
