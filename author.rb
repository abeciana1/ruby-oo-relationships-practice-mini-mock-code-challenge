require "pry"

class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Publisher.all.select do |publisher|
            publisher.author == self
        end
    end

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        Publisher.new(book, self)
    end

    def total_words
        books.sum do |publisher|
            publisher.book.word_count
            # binding.pry
        end
    end

    def self.most_words
        search = Publisher.all.max do |a, b|
            a.author.total_words <=> b.author.total_words
            # binding.pry
        end
        search.author
    end
end


# Author#total_words should return the total number of words that author has written across all of their authored books.
# Author.most_words should return the author instance who has written the most words