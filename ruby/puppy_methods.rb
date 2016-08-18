class Puppy
  def initialize 
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(integer)
    integer.times do |speak|
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
    integer.times do |coo|
    puts "coooooo!"
    end
  end

end

charles = Baby.new
charles.cry
charles.coo(4)

baby_list = []

50.times do |baby|
  baby_list << Baby.new
end

#p baby_list

baby_list.each do |baby|
  baby.cry
  baby.coo(2)
end


