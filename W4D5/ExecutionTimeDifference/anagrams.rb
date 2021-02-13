require 'benchmark'
str1 = "abcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijk"
str2 = "abcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijkabcdefghijk"

def first_anagram?(str1,str2)
  arr = str1.chars.permutation.to_a
  arr.include?(str2.chars)
end
# mike  (n + n! + n!) n! + n = n!....?
# alex n!

def second_anagram?(str1, str2)

  str1.each_char do |char| #n
    idx = str2.index(char)   #n^2
    str2[idx] = '' if str2.include?(char) #n^2
  end
  return true if str2.length == 0
  false
end
#mike  n^2 + n^2  = O(n^2)

#alex O(n^2)
# p second_anagram?(str1, str2)

def third_anagram?(str1,str2)
  str1.chars.sort == str2.chars.sort
end

#mike  O(n^2 + m^2) || O(nlogn + mlogm)

#alex O(n^2 + m^2) / O(nlogn + mlogm)

def fourth_anagram?(str1,str2)
  hash = Hash.new(0)
  str1.chars.each{|char| hash[char] += 1}
  str2.chars.each{|char| hash[char] -= 1}
  hash.values.all?{|ele| ele == 0}
end


#O(N + M)?




Benchmark.bm do |x|
  #x.report("first_anagram?") { first_anagram?(str1,str2) }
  x.report("second_anagram?") { second_anagram?(str1, str2) }
  x.report("third_anagram?") { third_anagram?(str1,str2) }  
  x.report("fourth_anagram?") { fourth_anagram?(str1,str2) } 
end
