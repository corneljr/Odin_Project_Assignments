def substrings(str,dictionary)
	hash = Hash.new(0)
	words = str.split(" ")
	words.each do |word|
		dictionary.each do |dic|
			if word.downcase =~ /#{dic}/
				hash[dic] += 1
			else
			end
		end
	end
	p hash
end
dictionary = ["below","down","go","going",
			  "horn","how","howdy","it",
			  "i","low","own","part","partner",
			  "sit"]
			  
#test
substrings("Howdy partner, sit down! How's it going?",dictionary)