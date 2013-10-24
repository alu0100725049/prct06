#!/usr/bin/ruby

class Fracciones
  def initialize
    @num = get_num
    @den = get_den
  end
  def get_num
    puts 'Introduce un numerador: '
    numerador = gets.to_i
    return numerador
  end
  def get_den
    puts 'Introduce un denominador: '
    denominador = gets.to_i
    return denominador
  end
  def mostrar_fraccion
    puts "La fraccion es: #{@num}/#{@den}"
  end
end

a = Fracciones.new
a.mostrar_fraccion
