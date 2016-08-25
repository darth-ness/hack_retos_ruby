answer = 1
puts "Escribir numero para calcular factorial: "
number = gets.chomp.to_i
if number != 0
  for i in (1..number) do
    answer = answer * i
  end
end
puts "El factorial del numero dado es = #{answer}"
