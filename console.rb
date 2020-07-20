require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("Alex")
a2 = Author.new("Russell")

b1 = Book.new("bio", 150, a1)
b2 = Book.new("adv", 100, a1)
b3 = Book.new("artsy", 50, a2)

a1.books

a1.write_book("horror", 400)

a1.total_words

Author.most_words

binding.pry


