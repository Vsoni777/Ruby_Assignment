def substrings(str,dictionary)
  hash={}
  str=str.downcase
  dictionary.each do |subString|
      hash[subString]=str.scan(subString).count
  end
  puts hash.select { |_, count| count > 0 }
end




dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below",dictionary)