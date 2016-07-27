# Release 0
#SPECIES ------------------------
#Canis Familiaris

#CHARACTERISTICS ----------------
#Tail length: varies
#Friendly: yes
#Eye count: 2
#Name: varies
#Color: varies
#Leg count: 4

#BEHAVIOR -----------------------
#Jump
#Lick
#Bark
#Pants

# Release 1
class Puppy
end

Puppy.methods

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

spot.class

duchess == fido

fido.instance_of?(Array)
fido.instance_of?(Puppy)
#spot.play_dead

# Release 2
str = String.new
str.length
str.empty?
str += "huh."

str = "some string"

greeting = String.new("Hello")
greeting.length
greeting.upcase
