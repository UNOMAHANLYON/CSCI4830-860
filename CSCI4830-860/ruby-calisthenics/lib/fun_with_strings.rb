module FunWithStrings
  # palindrome?
  def palindrome?
    self.downcase!
    self.gsub!(/[^a-zA-Z]/, "")
	  self == self.reverse
  end
  # count_words
  def count_words
    sArr = self.split(" ")
    sHsh = Hash.new
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
  def anagram_groups
    buffer = ""
    sHsh = Hash.new
    sArr = []
    if self == nil || self == ""
      return sArr
    else
      arr = self.split(" ")
      arr.each do |w|
        w.gsub!(/[^a-zA-Z]/, "")
        buffer = w.downcase.chars.sort.join
        puts buffer
        sHsh[buffer] ||= []
        sHsh[buffer] << w
      end 
      sHsh.each do |k,v|
        sArr << v
      end
      return sArr
    end  
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

