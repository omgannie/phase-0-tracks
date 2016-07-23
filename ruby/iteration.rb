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
