system("clear")
m = []
for i in 0..5 do
  m[i] = []
  for j in 0..2 do
    m[i][j] = rand(10)
  end
end

for i in 0..m.length-1 do
  print "["
  for j in 0..m[i].length-1 do
    print "[#{m[i][j]}"
  end
  print (j == m[j].length-1) ? ']' : ' ]'
  # print "]"
end
