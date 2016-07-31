class Santa
  attr_reader :ethnicity, :age
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho ho ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age += 1

    p @age
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.each do |name|
      if name == reindeer_name
        @reindeer_ranking.delete(name)
        @reindeer_ranking << name
      end
    end

    p @reindeer_ranking
  end

end

# Driver Code
first_santa = Santa.new("female", "Russian")
first_santa.speak
first_santa.eat_milk_and_cookies("chocolate chip")

santas = []
genders = ["female", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

first_santa.celebrate_birthday
first_santa.get_mad_at("Donner")
first_santa.gender = "intersex"
p first_santa.age
p first_santa.ethnicity
p first_santa.gender
