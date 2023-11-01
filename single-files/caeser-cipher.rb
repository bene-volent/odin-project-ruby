def caeser_cipher(message,shift=1)
  intermediate_array = message.split().map{|word| word.split("")}
  resultant_array = intermediate_array.map do |word|
    word = word.map do |letter|
      if (letter.ord() < 65 || letter.ord() > 91 && letter.ord() < 97 || letter.ord() > 122) 
        letter
      else 
        letter.ord < 91?((letter.ord() - 65  + shift) % 26 + 65).chr():((letter.ord() - 97  + shift) % 26 + 97).chr()
      end
    end
    word.join()
  end

  resultant_array.join(" ")
end

