

def caesar_cipher(str,num)
  newst=''
  puts str.length
  str.each_char do |s|
    puts s
    if s.eql?(' ')
        newst+=s
    else
    newst+=(((s.ord)+num).chr)
    end
  end
  return newst
end

newstr=caesar_cipher("What a string!", 5)
puts newstr
  