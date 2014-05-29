def caesar_cipher(string,shift)
	downcase_alphabet = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
	upcase_alphabet = %w{A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
	characters = string.split("")
	characters.map! do |char|
	    if char =~ /[a-z]/
	    	index = downcase_alphabet.index(char)
	    	index + shift > 25 ? index -= 26 : index
	    	downcase_alphabet[index + shift]
	    elsif char =~ /[A-Z]/
			index = upcase_alphabet.index(char)
			index + shift > 25 ? index -= 26 : index
			upcase_alphabet[index + shift]
		else
			char
		end
	end
	characters.join
end

# test
puts caesar_cipher("What a string!",5)