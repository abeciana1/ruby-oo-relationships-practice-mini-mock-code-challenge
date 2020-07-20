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

    def publishers
        Publisher.all.select do |publisher|
            publisher.author == self
        end
    end

    def books
        publishers.collect do |publisher|
            publisher.book
        end.uniq
    end

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        Publisher.new(book, self)
    end

    def total_words
        books.sum do |book|
            book.word_count
        end
    end

    def self.most_words
        search = Publisher.all.max do |a, b|
            a.author.total_words <=> b.author.total_words
        end
        search.author
        binding.pry
    end
end