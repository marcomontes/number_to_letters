# How to use: ruby num_to_letters.rb "10"

arg = ARGV[0]
puts "Número Ingresado: #{arg}"

letters = ('A'..'Z').to_a
complete_letters = letters.insert(14, "Ñ")

number = arg.to_i

letters_array = []
loops = (number/complete_letters.count) + 1

(1..loops).each do |n|

  complete_letters.each_with_index do |letter, index|
    if n == 1
      letters_array << letter
    else
      letters_array << letters_array[n-2] + letter
    end
  end

end

number_position_on_array = letters_array[number - 1]

puts "Conversión en letras para el número #{number}: #{number_position_on_array}"
