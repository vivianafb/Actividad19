#Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start enciende el vehículo.
#Se pide:
#Crear una clase Car que herede de Vehicle
#El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un contador de instancias de Car.
#Crear un método de clase en Car que devuelva la cantidad de instancias.
#El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
#Instanciar 10 Cars.
#Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.
require 'faker'
class Vehicle
  attr_accessor :model ,:year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
   @start == true
   puts "El motor se ha encendido!"
  end
end

class Car < Vehicle
  attr_accessor :count
  @@count = 0
  def initialize(model,year)
    super
    @@count +=1
  end
  def self.count
    puts @@count
  end
end

def factory
  10.times do |i|
    car = Car.new(Faker::Pokemon.name , Faker::Date.birthday.year)
    puts "Modelo #{car.model} año #{car.year}"
  end
end

factory