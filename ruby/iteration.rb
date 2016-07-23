# write method takes a block

books = {
  book_1: "read",
  book_2: "not read",
  book_3: "read"
}

books.each do |book, status|
  if status == "read"
    p "This book has been read already."
  else
    p "This book has not read yet."
  end
end


movies = {
	finding_dory: 5,
	movie_2: 7,
	movie_3: 9
}

actors = ["Ellen Paige", "Hugh Jackman", "Patrick Stewart"]

#presenting the original rating of each movie
movies.each do |movie, rating|
	puts "The movie #{movie.to_s} has a rating of #{rating}"
end

#presenting the original actor list
actors.each do |actor|
	puts "The actor #{actor} has an index of #{actors.index(actor)}"
end

#jumble the actors' names
actors.map! do |actor|
	actor.reverse
end

#presenting the final rating of each movie
movies.each do |movie, rating|
	puts "The movie #{movie.to_s} has a rating of #{rating}"
end

#presenting the changed actor list
actors.each do |actor|
	puts "The actor #{actor} has an index of #{actors.index(actor)}"
end

# Release 2
# method iterates thru items, deleting any that meets certain condition
grocery_list = ["milk", "juice", "cookies"]

dinner_menu = {
  first_course: "soup",
  second_course: "salad",
  main_course: "steak",
  dessert: "chocolate cake"
}

grocery_list.delete_if { |item| item.length < 5 }

p grocery_list

dinner_menu.delete_if { |course, meal| meal.length < 5 }

p dinner_menu

# method to filter a data structure for items to meet condition
p grocery_list.select { |item| item.length == 5 }

p dinner_menu.select { |course, meal| meal.length == 5 }

# filter data structure, different method for meeting condition
grocery_list.keep_if { |item| item.length > 5 }
p grocery_list

dinner_menu.keep_if { |course, meal| meal.length > 5 }
p dinner_menu

# method to remove items until condition
# in block = false, then breaks

grocery_list.reject! { |item| item == "cookies" }
p grocery_list

dinner_menu.reject! { |course, meal| meal == "chocolate cake" }
p dinner_menu
