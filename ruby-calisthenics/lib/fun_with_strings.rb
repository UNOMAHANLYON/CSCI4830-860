module FunWithStrings
  # palindrome?
  def palindrome? (s)
    s.downcase!
    s.gsub!(/[^a-zA-Z]/, "")
	  s == s.reverse
  end
  # count_words
  def count_words (s)
    sArr = s.split(" ")
    sHsh = new.Hash
	  sArr.each do |w|
	    w.gsub!(/[^a-zA-Z]/, "")
		  w.downcase!
		  if sHsh[w] == nil
			  sHsh[w] = 1
		  else
			  sHsh[w] += 1
		  end
		end
		return sHsh
  end
  # anagram_groups
  def anagram_groups (s)
    num = 0
    sHsh = new.Hash
    sArr = []
    buffArr =[]
    if s == nil || s == ""
      return arr = []
    else
      arr = s.split(" ")
      arr.each do |w|
        w.gsub!(/[^a-zA-Z]/, "")
        num = w.downcase.sum
        sHsh[num.to_sym] => w
      end  
      sHsh.each do |key, value|
        value.values.each do |v|
          buffArr.push(v)
        end
        sArr.push(buffArr)
      end
      return sArr
    end  
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

