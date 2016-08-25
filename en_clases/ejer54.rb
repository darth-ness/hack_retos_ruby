

students = []

def add_student(code, name, lastname, address, telephone, email)
  {
    code: code,
    name: name,
    lastname: lastname,
    address: address,
    telephone: telephone,
    email: email
  }
end

def select_student(students, key, value)
  students.select do |student|
    student[key] == value
  end
end

def sort_students(students)
  students.sort_by do |student|
    student[:code]
  end
end

def delete_student(students, code)
  students.delete_if {|el| el[:code] == code}
end

def modify_student(students, element)

end


   system("clear")
 i = 0
 3.times do
   puts "Escribe el nombre:"
   name = gets.chomp
   puts "Escribe el apellido:"
   lastname = gets.chomp
   puts "Escribe la direccion:"
   address = gets.chomp
   puts "Escribe el telefono:"
   telephone = gets.chomp
   puts "Escribe el email:"
   email = gets.chomp
   code = rand(50).to_s
   students << add_student(code, name, lastname, address, telephone, email)
   i += 1
 end

p students
2.times {puts}
puts "Ingrese nombre a buscar: "
value = gets.chomp

puts select_student(students, :name, value)
2.times {puts}

puts "Los estudiantes ordenados por codigo: "
puts
sorted = sort_students(students)
puts sorted
2.times {puts}

puts "Ingrese el codigo del usuario a eliminar: "
code = gets.chomp
puts delete_student(students, code)
puts
