

def caesarcypher(string, key)
  (string.split()).each do |word|
    puts "mot : #{word}"
    (0..word.length-1).each do |i|
      a = word[i].ord
      if ((a > 64) && (a < 91)) || ((a > 96) && (a < 123))
        b = a + key
        c = b.chr
       puts "lettre : #{word[i]} -> #{a} -> #{b} -> #{c} "
       #faire un .join() pour concatener dans un string et pouvoir reafficher le mot 
      end
    end
  end
end

caesarcypher("Hello la mif!!", 5)

caesarcypher(caesarcypher("Hello la mif!!", 5),(-5))


# a = gets.chomp

#caesarcypher2
# .join

# conversion string => integer ASCII
# "A".ord => 65 (ruby 2.0)
# 'A'[0].ord (ruby 1.9)
