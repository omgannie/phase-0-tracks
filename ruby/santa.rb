# Release 0

class Santa
  def initalize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho ho ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end
end

# Driver Code
first_santa = Santa.new
first_santa.speak
first_santa.eat_milk_and_cookies("chocolate chip")
