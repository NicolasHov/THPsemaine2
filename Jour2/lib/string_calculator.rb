# lib/string_calculator.rb
class StringCalculator

#faire une calculatrice simple

def self.ask_numbers
  puts "Nombre 1 ?"
  number1 = gets.chomp.to_i
  puts "Nombre 2 ?"
  number2 = gets.chomp.to_i
  return number1, number2
end

def self.add(*args)
  arg1 = 0
  args.each do |arg|
    puts "arg = #{arg}"
    arg1 = arg1 + arg.to_i
  end
  # number1, number2 = ask_numbers
  return arg1
end

puts "answer = #{add("","")}"
end
