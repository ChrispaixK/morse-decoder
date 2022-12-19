def decode_char(str)
  morse_dict = {
    'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.',
    'g' => '--.', 'h' => '....', 'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..',
    'm' => '--', 'n' => '-.', 'o' => '---', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.',
    's' => '...', 't' => '-', 'u' => '..-', 'v' => '...-', 'w' => '.--', 'x' => '-..-',
    'y' => '-.--', 'z' => '--..'
  }
  morse_dict.each_key do |key|
    return key.upcase if str == morse_dict[key]
  end
end

def decode_word(str)
  word = ''
  str.split.each do |char|
    word += decode_char(char)
  end
  word
end

def decode(str)
  message = ''
  str.split('   ').each do |word|
    message += " #{decode_word(word)}"
  end
  p message.strip
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
