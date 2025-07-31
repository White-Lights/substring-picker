def substrings(str, dictionary)
  count = dictionary.reduce({}) do |count, word|
    count[word] = str.split(" ").map(&:downcase).filter{|substr| substr.include?(word)}.length
    count
  end
  return count.filter{|word| count[word] != 0}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Expected:  { """"below"""" => 1, """"low"""" => 1 }"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)