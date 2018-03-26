require './lib/caesar'

puts "please enter the message you want to encrypt"
answer = gets.chomp

caesar = Caesar.new
p caesar.eng_to_cipher(answer, 24)
puts "decrypt that one to see if working?"
answer1 = gets.chomp
if answer1 == "yes"
  p caesar.cipher_to_eng(caesar.eng_to_cipher(answer,24))
end
