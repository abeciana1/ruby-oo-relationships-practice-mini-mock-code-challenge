require 'pry'
require_relative './book'
require_relative './author'
require_relative './publisher'

a1 = Author.new("Alex")
a2 = Author.new("Russell")

b1 = Book.new("bio", 150)
b2 = Book.new("adv", 100)
b3 = Book.new("artsy", 50)

p1 = Publisher.new(b1, a1)
p2 = Publisher.new(b2, a2)
p3 = Publisher.new(b2, a1)
p4 = Publisher.new(b3, a2)

a1.books

a1.write_book("horror", 400)

a1.total_words

Author.most_words

binding.pry


