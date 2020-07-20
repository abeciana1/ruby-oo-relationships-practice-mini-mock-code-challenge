require "pry"

class Book

    attr_reader :title, :word_count

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def publishers
        Publisher.all.select do |publisher|
            publisher.book == self
        end
    end

    def authors
        publishers.collect do |publisher|
            publisher.author
        end.uniq
    end
end