system("clear")
m = []
r = 100
long = 3
flag = false
aux = []

# suma = 0

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
    aux.push(m[j][i])
  end
end
for i in 0..long-1 do
  for j in 0..long-1 do
    m[i][j] = aux[k]
    k = k + 1
  end
end

print "#{aux}\n"
print "#{m}\n"
