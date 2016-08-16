class Puppy
  def initialize 
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(integer)
    integer.times do |i|
    puts "Woof!"
  	end
  end
  
  def roll_over
    puts "*rolls over*"
  end

  def dog_years(integer)
  	dog_age = integer * 7
  	puts "The dog is #{dog_age} years old!"
  end

  def growls
    puts "Grrrrr!"
  end

end


Mogley = Puppy.new
Mogley.fetch("ball")
Mogley.speak(3)
Mogley.roll_over
Mogley.dog_years(2)
Mogley.growls


class Baby

  def initialize
    puts "Initializing new baby instance ..."
  end

  def cry
    puts "WAHHHHHHH!"
  end

  def coo(integer)
    integer.times do |i|
    puts "coooooo!"
  end
  end

end

Charles = Baby.new
Charles.cry
Charles.coo(4)

baby_list = 50.times.collect{Baby.new}
p baby_list

def baby_cry(list)
	list.each do
	p "hello"
	end
end
	
baby_cry(baby_list)


