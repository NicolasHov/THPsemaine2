#faire une calculatrice simple

def ask_numbers
  puts "Nombre 1 ?"
  number1 = gets.chomp.to_i
  puts "Nombre 2 ?"
  number2 = gets.chomp.to_i
  if number1 == ""
    number1 = 0
  end
  if number2 == ""
    number2 = 0
  end
  return number1, number2
end

def add(*args)
  args.inject(:+)
end

def perform
  number1, number2 = ask_numbers
  puts add(number1,number2)
end

perform
