
def recibe_proc(procedimiento, &bloque)
  bloque.call(procedimiento)
end

num = gets.chomp
procedimiento = Proc.new {|n| n * num}

recibe_proc(procedimiento) {|proced| puts proced * proced}
