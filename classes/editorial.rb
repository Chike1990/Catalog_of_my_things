require_relative './book'
require 'colorize'
require 'json'
require 'date'

class Editorial
  def initialize
    @books = fetch_books
  end
  attr_accessor :books

  def add_book
    puts 'Whats the Genre of the book?'.blue
    genre = gets.chomp.capitalize
    puts 'Whats the Author of the book?'.blue
    author = gets.chomp.capitalize
    puts 'Whats the publish year of the book?'.blue
    year = gets.chomp.to_i(10)
    puts 'Who is the publisher'.blue
    publisher = gets.chomp.capitalize
    puts 'whats is the state of the cover? [good/bad]'.blue
    state = gets.chomp.capitalize
    new_book = Book.new(genre, author,year, publisher, state)
    @books << new_book
    p books
    save_books
  end

  def save_books
    arr = @books.map do |book|
      {
        genre: book.genre,
        author: book.author,
        publish_date: book.publish_date,
        publisher: book.publisher,
        cover_state: book.cover_state,
        label: book.label
      }
    end

    File.write('bookCollection.json', arr.to_json)
  end

  private
  def fetch_books
    exists = false
    exists = true if File.exist?('bookCollection.json')
    unless exists
      f = File.open('bookCollection.json', 'w+')
      f.write(JSON.generate([]))
      f.close
    end
    book_file = File.open('bookCollection.json', 'r+')
    data = book_file.read
    JSON.parse(data)
  end
end

e = Editorial.new
e.add_book
p e.books