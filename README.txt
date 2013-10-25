Errores que han aparecido en el spec

Failures:

  1) Fracciones Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador
     Failure/Error: @x.new(1, 2).mostrar_fraccion.should == "La fraccion es: 1/2"
       expected: "La fraccion es: 1/2"
            got: nil (using ==)
     # ./fracciones_spec.rb:35

  2) Fracciones Se debe comparar si dos fracciones son iguales con ==
     Failure/Error: @x.new(1, 2).should comparar_igualdad @x.new(2, 4)
     NoMethodError:
       undefined method `comparar_igualdad' for #<RSpec::Core::ExampleGroup::Nested_1:0xb71dcf24>
     # ./fracciones_spec.rb:43

Finished in 0.00284 seconds
7 examples, 2 failures

Failed examples:

rspec ./fracciones_spec.rb:34 # Fracciones Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador
rspec ./fracciones_spec.rb:42 # Fracciones Se debe comparar si dos fracciones son iguales con ==

