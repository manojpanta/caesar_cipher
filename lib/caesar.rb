require 'pry'
# this is caesar cipher
class Caesar
  attr_reader :dictionary, :number

  def initialize
    @dictionary = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    @number = 0
  end

  def rotate
    dictionary.rotate(number)
  end

  def zipped_array
    dictionary.zip(rotate)
  end

  def turn_into_hash
    zipped_array.to_h
  end

  def eng_to_cipher(message, number)
    @number = -number
    message = message.split('')
    message.map do |letter|
      encrypt_letter(letter)
    end.join
  end

  def encrypt_letter(letter)
    if space?(letter)
      letter
    else
      turn_into_hash[letter]
    end
  end

  def space?(letter)
    letter == ' '
  end

  def invert_array
    turn_into_hash.invert
  end

  def cipher_to_eng(message)
    message = message.split('')
    message.map do |letter|
      decrypt_letter(letter)
    end.join
  end

  def decrypt_letter(letter)
    if space?(letter)
      letter
    else
      invert_array[letter]
    end
  end
end
