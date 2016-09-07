 #Coyotes

#Shout module
# module Shout
#  def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#  def self.yell_happily(words)
#     words + "!!!!!!!!!" + " ;p"
#   end
# end

#Driver code for shout module
# p Shout.yell_angrily("How dare you")
# p Shout.yell_happily("Woooooo hooooooo")


#Shout mixin 
module Shout
 def yell_angrily(words)
    words + "!!!" + " :("
  end

 def yell_happily(words)
    words + "!!!!!!!!!" + " ;p"
  end
end

class Lifeguard 
  include Shout
end

class Teacher
  include Shout
end

#Driver code to make new instances and calls module methods
beth = Lifeguard.new
p beth.yell_angrily("Get out of the pool")
p beth.yell_happily("Kids swim")

val = Teacher.new
p val.yell_angrily("Listen up")
p val.yell_happily("Have a good summer")






#Bobolinks
  # =begin
  # #Shout module
  # module Shout
  #   def self.yell_angrily(words)
  #     words + "!!!" + " :("
  #   end

  #   def self.yelling_happily(words)
  #     words + "!!!" + " :)"
  #   end
  # end

  # #Driver code that calls module methods
  # p Shout.yelling_happily("Hello there")
  # p Shout.yell_angrily("Ok, now go away")
  # =end

  # #Mixin version of Shout module
  # module Shout
  # 	def yell_angrily(words)
  # 		words + "!!!" + " :("
  # 	end

  # 	def yelling_happily(words)
  #     	words + "!!!" + " :)"
  #   	end
  # end

  # #Classes that include Shout module
  # class Grumpy_neighbor
  # 	include Shout
  # end

  # class Crossing_guard
  # 	include Shout
  # end

  # #Initiate instances of classes
  # chris = Grumpy_neighbor.new
  # tom = Crossing_guard.new


  # #Call both methods for each instance
  # p chris.yell_angrily("Get off my lawn")
  # p chris.yelling_happily("Sorry I am so rude")

  # p tom.yell_angrily("Stop")
  # p tom.yelling_happily("Ok, now walk")