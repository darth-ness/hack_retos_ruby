system("clear")
m = []
r = 100
long = 15
flag = false
answer = []
suma = 0

for i in 0..long-1 do
  m[i] = []
  for j in 0..long-1 do
    m[i][j] = rand(r)
  end
end
print "#{m}\n"

k = 0
for i in 0..long-1 do
  for j in 0..long-1 do
    if m[i][j] % 2 != 0 then
      suma = suma + m[i][j]
      flag = true
      k = k + 1
    end
  end
end
puts "La suma de los impares en esta matriz es: #{suma}"
