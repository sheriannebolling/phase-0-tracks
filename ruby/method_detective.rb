# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
puts "iNvEsTiGaTiOn".swapcase
puts "iNvEsTiGaTiOn".swapcase!

# "zom".<???>
# => “zoom”
puts "zom".insert(1, "o")
puts "zom".replace ("zoom")

# "enhance".<???>
# => "    enhance    "
puts "enhance".center(20)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop! You’re under arrest!".upcase
puts "Stop! You’re under arrest!".upcase!
puts "Stop! You’re under arrest!".replace("STOP! YOU’RE UNDER ARREST!")

# "the usual".<???>
#=> "the usual suspects"
puts "the usual".insert(9, " suspects")
puts "the usual" << " suspects"
puts "the usual".replace ("the usual suspects")

# " suspects".<???>
# => "the usual suspects"
puts " suspects".prepend("the usual")
puts "suspects".insert(0, "the usual ")
puts "suspects".replace ("the usual suspects")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".slice(0..38)
puts "The case of the disappearing last letter".slice("The case of the disappearing last lette")
puts "The case of the disappearing last letter".slice(0, 39)
puts "The case of the disappearing last letter".replace("The case of the disappearing last lette")

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts "The mystery of the missing first letter".slice(1..38)
puts "The mystery of the missing first letter".slice("he mystery of the missing first letter")
puts "The mystery of the missing first letter".slice(1, 38)
puts "The mystery of the missing first letter".replace("he mystery of the missing first letter")

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".squeeze
puts "Elementary,    my   dear        Watson!".squeeze!
puts "Elementary,    my   dear        Watson!".replace("Elementary, my dear Watson!")

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts "z".codepoints

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
puts "How many times does the letter 'a' appear in this string?".count("a")
