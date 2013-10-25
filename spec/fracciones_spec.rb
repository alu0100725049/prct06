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
  
end