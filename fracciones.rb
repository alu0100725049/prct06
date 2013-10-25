#!/usr/bin/ruby

class Fracciones
  
  attr_accessor :num, :den
  
  def initialize (num, den)
    @num = num/mcd(num, den)
    @den = den/mcd(num,den)
  end
  
  def mostrar_fraccion
    puts "La fraccion es: #{@num}/#{@den}"
  end
  
  def flotante
    @num.to_f / @den.to_f
  end
  
  def comparar_igualdad(x)
    ((self.num == x.num) && (self.den == x.den))
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
  
  def menor (x)
    ((self.num * x.den) < (self.den * x.num))
  end
  
  def mayor (x)
    ((self.num * x.den) > (self.den * x.num))
  end
  
  def menor_igual (x)
    ((self.num * x.den) <= (self.den * x.num))
  end
  
  def mayor_igual (x)
    ((self.num * x.den) >= (self.den * x.num))
  end
  
  def resto (x)
    return ((self.num * x.den) % (self.den * x.num))
  end

  def mcd (u, v)
    u, v = u.abs, v.abs
    while v != 0
      u, v = v, u % v
    end
    u
  end

  def mcm (u, v)
    (u * v)/mcd(u, v)
  end
  
  def suma(x)
    m = mcm(self.den, x.den)
    Fracciones.new((m/self.den * self.num) + (m/x.den * x.num),m)
  end
  
  def resta(x)
    m = mcm(self.den, x.den)
    Fracciones.new((m/self.den * self.num) - (m/x.den * x.num),m)
  end
  
  def producto(x)
    Fracciones.new(self.num * x.num, self.den * x.den)
  end
  
  def division(x)
    Fraccion.new(self.num * x.den, self.den * x.num)
  end
  
end