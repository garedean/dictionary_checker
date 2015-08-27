class String
 def to_standardized_array
   self.downcase
   .gsub(/\.{3}|—|\//, ' ') # account for special cases
   .gsub(/[\/\\\.,!"]|'\w|\d\S*/, '') # remove most punctuation, special cases
   .split(' ')
 end
end
