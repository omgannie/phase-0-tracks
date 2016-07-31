#module Shout
#  def self.yell_angrily(words)
#    p words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#    p words + "!!!" + " :)"
#  end
#end

#Shout.yell_happily("AHHHH")
#Shout.yell_angrily("AHHHH")

module Shout
  def yell_angrily(words)
    puts words.upcase! + "!!!" + ">:("
  end

  def yell_happily(words)
    puts words.upcase! + "!!!" + ":D"
  end
end

class Angry
  include Shout
end

class Happy
  include Shout
end

angry = Angry.new
angry.yell_angrily("Hello enemy")

happy = Happy.new
happy.yell_happily("Hello friend")
