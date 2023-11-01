def substrings(input,dictionary)
input = input.downcase
  resultant_hash = {}
  dictionary.each do |dict|
    last_index = -1
    resultant_hash[dict] = 0
    last_index = input.index(dict)
    until last_index == nil do
      resultant_hash[dict]+=1
      last_index = input.index(dict,last_index + 1)
    end
    resultant_hash.delete(dict) if resultant_hash[dict] == 0
  end
  resultant_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
