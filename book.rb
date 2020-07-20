require "pry"

class Book

    attr_accessor :title, :author, :word_count

    @@all = []

    def initialize(title, word_count, author)
        @title = title
        @word_count = word_count
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end
end