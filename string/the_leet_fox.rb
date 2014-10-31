  # Given the string "The quick brown fox jumps over the lazy dog."
  # When your script is run
  # Then I will see any character 'e' converted into a 3
  # And  I will see all the other letters capitalized

class String
  def leet
    leet_dict = {'E' => '3', 'A' => '4', 'S' => '$',
      'I' => '!', 'O' => '0', 'H' => '#', 'Q' => '9'}

    leet_dict.each do |key, value|
      self.upcase!
      self.gsub!(key, value)
    end

    return self

  end
end

fox_str = "The quick brown fox jumps over the lazy dog."


puts fox_str.leet

# puts fox_str.upcase.gsub("E", "3") #<- Easy way
