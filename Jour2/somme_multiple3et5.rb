
#Trouve la somme des multiples de 3 et 5 inférieurs à 1000


def multiple()
  sum = 0 #initialisation de la vatiable qui enregistrera la somme
  (1...1000).each do |i|  #je fais une boucle de 1 à 1000
    if (i % 3 == 0) && (i % 5 == 0) #je fais une condition sur i
      sum = sum + i #j'ajoute i à somme  quand la condition est vérifiée
      # puts "je suis un multiple de 3 et 5 : #{i}"
    end
  end
  return sum
end

puts "la somme des multiples de 3 et 5 qui sont inférieurs à 1000 est #{multiple()}"
