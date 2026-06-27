require 'debug'

def caesar_cipher(string, number)
  shift = if number.is_a?(Integer)
      number
    elsif number.is_a?(String) && number.match?(/\A-?\d+\z/)
      number.to_i
    else
      return 'Warning: Shift value must be an integer'
    end
  
   string.downcase!
   alphabet = ('a'..'z').to_a
   number_jumps = shift.negative? ? shift % -alphabet.length : shift % alphabet.length

   new_string = string.chars.reduce('') do |acc, char|
    if number_jumps.positive?
      if alphabet.index(char) + number_jumps >= alphabet.length 
        acc + alphabet[alphabet.index(char) + number_jumps - alphabet.length]
        else
        acc + alphabet[alphabet.index(char) + number_jumps]
      end
    else
      if alphabet.index(char) + number_jumps < 0
        acc + alphabet[alphabet.index(char) + number_jumps + alphabet.length]
        else
        acc + alphabet[alphabet.index(char) + number_jumps]
      end
    end
  end
  new_string
end