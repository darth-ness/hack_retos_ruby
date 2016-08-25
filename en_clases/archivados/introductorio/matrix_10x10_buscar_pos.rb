system("clear")
m = []
r = 100
long = 10
flag = false
answer = []

for i in 0..long-1 do
  m[i] = []
  for j in 0..long-1 do
    m[i][j] = rand(r)
  end
end
print "#{m}\n"

print "Indique numero a buscar: "
num  = gets.chomp.to_i

k = 0
for i in 0..long-1 do
  for j in 0..long-1 do
    if num == m[i][j] then
      answer[k] = "[#{i},#{j}] "
      flag = true
      k = k + 1
    end
  end
end
if flag == false then
  puts "El numero no se encuentra en la matriz"
  else
    puts "El numero solicitado esta en: "
    puts answer
end
print "\n"
