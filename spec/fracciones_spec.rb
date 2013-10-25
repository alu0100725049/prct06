#!/usr/bin/ruby

require 'spec_helper'

describe Fracciones do
  
  before :each do
    @x = Fracciones
  end
  
  it "Debe existir un numerador" do
    @x.new(1, 2).num.should == 1
  end
  
  it "Debe existir un denominador" do
    @x.new(1, 2).den.should == 2
  end
  
# it "Se debe invocar al método num() para obtener el numerador" do
# end

# it "Se debe invocar al método denom() para obtener el denominador" do
# end
  
  it "El denominador tiene que ser distinto de cero" do
    lambda { @x.new(1, 0)}.should raise_error(TypeError)
  end
  
  it "Debe de estar en su forma reducida" do
    @x.new(2, 4).num.should == 1
    @x.new(2, 4).den.should == 2
  end
  
  it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
    @x.new(1, 2).to_s.should == "1/2"
  end
  
  it "Se debe mostar por la consola la fraccion en formato flotante" do
    @x.new(1, 2).to_f.should == 0.5
  end
  
  it "Se debe comparar si dos fracciones son iguales con ==" do
    @x.new(1, 2).should == @x.new(2, 4)
    @x.new(1, 2).should_not == @x.new(1, 3)
  end
  
  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
    @x.new(-1, 2).abs.should == @x.new(1, 2)
    @x.new(-1, 2).abs.should_not == @x.new(-1, 2)
  end
  
  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
    @x.new(-1, 2).reciproco.should == @x.new(2, -1)
    @x.new(-1, 2).reciproco.should_not == @x.new(-1, 2)
  end
  
  it "Se debe calcular el opuesto de una fraccion con -" do
    (-@x.new(1, 2)).should == @x.new(-1, 2)
    (-@x.new(1, 2)).should_not == @x.new(1, 2)
  end
  
  it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
    (@x.new(1, 2) + @x.new(1, 2)).should == @x.new(1, 1)
    (@x.new(1, 2) + @x.new(1, 2)).should_not == @x.new(2, 3)
  end
  
  it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
    (@x.new(1, 2) - @x.new(1, 4)).should == @x.new(1, 4)
    (@x.new(1, 2) - @x.new(1, -3)).should_not == @x.new(1, 2)
  end
  
  it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
    (@x.new(1, 3) * @x.new(-2, 3)).should == @x.new(-2, 9)
    (@x.new(1, 2) * @x.new(1, 3)).should_not == @x.new(6, 1)
  end
    
  it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
    (@x.new(1, 2) / @x.new(-1, 6)).should == @x.new(3, -1)
    (@x.new(1, 2) / @x.new(1, -3)).should_not == @x.new(3, 3)
  end
  
  it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
    (@x.new(3, 5) % @x.new(4, 7)).should == 1
    (@x.new(1, 2) % @x.new(2, 5)).should_not == 0
  end
  
  it "Se debe de poder comprobar si una fracion es menor que otra" do
    (@x.new(1, 2) < @x.new(1, 1)).should be_true
    (@x.new(1, 1) < @x.new(-1, 2)).should be_false
  end
  
  it "Se debe de poder comprobar si una fracion es mayor que otra" do
    (@x.new(1, 1) > @x.new(1, 2)).should be_true
    (@x.new(-1, 2) > @x.new(1, 1)).should be_false
  end
  
  it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
    (@x.new(1, 2) <= @x.new(2, 4)).should be_true
    (@x.new(1, 1) <= @x.new(1, 2)).should be_false
  end
    
  it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
    (@x.new(1, 2) >= @x.new(2, 4)).should be_true
    (@x.new(1, 2) >= @x.new(1, 1)).should be_false
  end
  
end