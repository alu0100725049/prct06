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
  
end