#Shout module
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end


#Driver code that calls module methods
p Shout.yelling_happily("Hello there")

p Shout.yell_angrily("Ok, now go away")