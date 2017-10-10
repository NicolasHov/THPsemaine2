# chiffre_de_cesar("What a string!", 5)
# "Bmfy f xywnsl!"

#pensez à boucler z à a

def chiffre_de_cesar(monMot, x)
  # TODO renvoyer le tableau d'entier
  tab = returnInteger(monMot)
  # TODO décaler de X crans
  tab1 = decalerTab(tab, x)
  # TODO renvoyer le mot
  return tab2 = returnTabString(tab1, x)
  # TODO renvoyer mot initial
  # puts uncrypt(tab2, x)
end

# def uncrypt(monTabString,x)
#   tab2 = []
#   i = 0
#   monTabString.each do |element|
#     j = i - x
#     tab2[element] << j.chr
#   end
# end



def returnInteger(myString)
  array = []
  (0..myString.length-1).each do |i|
    a = myString[i]
    b = a.ord()
    array << b
    # puts "la lettre #{i} est #{a} et son code est #{b}"
  end
  return array
end

def decalerTab(tab, x)
  array = []
  tab.map do |element|
    array << element + x
  end
  return array
end

def returnTabString(tabInteger, x)
  tab2 = []
  tabInteger.map do |i|
    tab2 << i.chr
  end
end

# puts returnInteger("hello")
puts "le mot crypté est : #{chiffre_de_cesar("garbage",5)}"
puts "le mot décrypté est : ...."





#
# array = [1,2,3,4,5]
# doubled = array.map do |element|
#   element * 2
# end
# puts doubled
