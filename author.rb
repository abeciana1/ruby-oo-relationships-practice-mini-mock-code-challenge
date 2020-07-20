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
        Book.all.select do |book|
            book.author == self
        end
    end

    def write_book(title, word_count)
        Book.new(title, word_count, self)
    end

    def total_words
        books.sum { |book| book.word_count }
    end

    def self.most_words
        Book.all.min do |a, b|
            a.author.total_words <=> b.author.total_words
            # binding.pry
        end
    end
end


# Author#total_words should return the total number of words that author has written across all of their authored books.
# Author.most_words should return the author instance who has written the most words