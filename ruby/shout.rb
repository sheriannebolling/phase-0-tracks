=begin
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
=end

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
    	words + "!!!" + " :)"
  	end
end

class Grumpy_neighbor
	include Shout
end

class Crossing_guard
	include Shout
end


chris = Grumpy_neighbor.new
tom = Crossing_guard.new

p chris.yell_angrily("Get off my lawn")
p chris.yelling_happily("Sorry I am so rude")

p tom.yell_angrily("Stop")
p tom.yelling_happily("Ok, now walk")