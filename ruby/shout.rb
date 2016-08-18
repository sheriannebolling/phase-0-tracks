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

#Mixin version of Shout module
module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
    	words + "!!!" + " :)"
  	end
end

#Classes that include Shout module
class Grumpy_neighbor
	include Shout
end

class Crossing_guard
	include Shout
end

#Initiate instances of classes
chris = Grumpy_neighbor.new
tom = Crossing_guard.new


#Call both methods for each instance
p chris.yell_angrily("Get off my lawn")
p chris.yelling_happily("Sorry I am so rude")

p tom.yell_angrily("Stop")
p tom.yelling_happily("Ok, now walk")