# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.delete_all
ClassRoom.delete_all

class_room = ClassRoom.create(number: 31, capacity:25)

# Student.create
Student.create(name: "Obi Wan", identity: "23232323",
              class_room_id: class_room.id)
# student.
# student.identity = "2323232"
# student.class_room_id = class_room.id
# student.save

p student  # para demostrar al ejecutar db:seed todo salio ok...
