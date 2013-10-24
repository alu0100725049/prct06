#!/usr/bin/ruby

class Fracciones
  
  attr_accessor :num, :den
  
  def initialize (num, den)
    @num = num
    @den = den
  end
  
  def mostrar_fraccion
    puts "La fraccion es: #{@num}/#{@den}"
  end
  
  def comparar_igualdad(x)
    if ((self.num == x.num) && (self.den == x.den))
      puts 'Las fracciones son iguales'
    else
      puts 'Las fracciones son distintas'
    end
  end
  
  def absoluto
    Fracciones.new(@num.abs, @den.abs)
  end
  
  def reciproco
    Fracciones.new(@den, @num)
  end
  
  def opuesto
    Fracciones.new(-@num, -@den)
  end
  
end

#-------------------------------------------------------------------------------------------------------------------------

  def get_num
    puts 'Introduce un numerador: '
    numerador = gets.to_i
    return numerador
  end
  
  def get_den
    puts 'Introduce un denominador: '
    denominador = gets.to_i
    raise TypeError, "0 no puede ser denominador" unless denominador != 0
    return denominador
  end
  
#-------------------------------------------------------------------------------------------------------------------------

num = get_num
den = get_den
a = Fracciones.new(num, den)
#a.mostrar_fraccion

#-------------------------------------------------------------------------------------------------------------------------

#num = get_num
#den = get_den
#b = Fracciones.new(num, den)
#b.mostrar_fraccion

#-------------------------------------------------------------------------------------------------------------------------

#a.comparar_igualdad(b)