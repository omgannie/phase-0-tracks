module Shout
  def self.yell_angrily(words)
    p words + "!!!" + " :("
  end

  def self.yell_happily(words)
    p words + "!!!" + " :)"
  end

end

Shout.yell_happily("AHHHH")
Shout.yell_angrily("AHHHH")
