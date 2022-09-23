require 'glimmer-dsl-libui'
include Glimmer
window {
    title 'hello world' # property
    
    on_closing do # listener (always has a do; end block to signify logic)
      puts 'Bye'
    end
    
    button('greet') { # nested control
      on_clicked do
        puts 'hello world'
      end
    }
}.show