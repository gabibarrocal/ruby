# frozen_string_literal: true

# Classes possui atributos e métodos
# caracteristicas e açoes

# carro (nome, marca, modelo, quant. de portas,...)
# ligar, buzinar, parar, ....

class Carro
  attr_accessor :nome

  def ligar
    puts 'o carro esta pronto.'
  end
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar

# pegar o tipo
# puts civic.class
