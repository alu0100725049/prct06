Errores que han aparecido en el spec

.............F.....

Failures:

  1) Fracciones Se debe dividir dos fracciones con / y dar el resultado de forma reducida
     Failure/Error: (@x.new(1, 2) / @x.new(-1, 6)).should == @x.new(3, -1)
     NoMethodError:
       undefined method `/' for #<Fracciones:0xb71892ac @num=1, @den=2>
     # ./fracciones_spec.rb:78

Finished in 0.00723 seconds
19 examples, 1 failure

Failed examples:

rspec ./fracciones_spec.rb:77 # Fracciones Se debe dividir dos fracciones con / y dar el resultado de forma reducida

