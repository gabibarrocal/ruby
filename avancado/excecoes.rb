# frozen_string_literal: true

#begin
# devo tentar alguma coisa
#  file = File.open("./ola")
#  puts file.read if file
#rescue Exception => e
#  puts e.message
#  puts e.backtrace
# devo obter um possivel erro
#end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts "erro ao executar a soma"
end

soma("10", 5)
