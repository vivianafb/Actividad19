require 'faker'

module Test
  def result
      prom = (nota1+nota2)/2
      puts "nombre : #{nombre}"
      puts prom > 4 ? "Estudiante aprobado" : "Estudiante Reprobado"
  end
end

module Attendance
  def student_quantity
      how_many
  end
end

class Student
  @@quantity = 0
  attr_accessor :quantity, :nombre, :nota1, :nota2
  include Test#(metodo de instancia)
  extend Attendance#(metodo de clase)
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity +=1
  end
  def self.how_many
    @@quantity
  end
end

  10.times do
  r = Random.new
  student = Student.new(Faker::Simpsons.character, r.rand(1..7), r.rand(1..7))
  student.result
  end
puts "Instancias creadas : #{Student.student_quantity}"
