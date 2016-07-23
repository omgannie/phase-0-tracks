library_books = {
  fiction: {
    genres: [
      'suspense',
      'crime',
      'mystery',
      'fantasy',
      'western',
      'workplace humor',
      'tragedy'
    ],
    authors: 48
  },
  nonfiction: {
    genres: [
      'biography',
      'memoir',
      'creative nonfiction',
      'journals',
      'essays',
      'history'
    ],
    authors: 32
  }
}

p library_books[:fiction][:genres][5]
p library_books[:nonfiction][:authors]

library_books[:fiction][:genres].push('romance')
p library_books[:fiction][:genres]

library_books[:fiction][:authors] = 59
p library_books[:fiction][:authors]
