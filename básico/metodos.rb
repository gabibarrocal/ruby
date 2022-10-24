def diga_ola
  puts "ola"
end

diga_ola #invocando o método

#o ruby entende que a ultima instruçao sempre será devolvida no método
def retorna_nome
  "fernando"
end

resultado = retorna_nome
puts resultado
