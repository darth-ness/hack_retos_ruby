def suma(num)
  Proc.new{|elem| num + elem}
end

procedimiento = suma(7)
puts procedimiento.call(2)
puts procedimiento.call(1)

procedimiento = suma(2)
# puts procedimiento  
puts procedimiento.call(2)
