require_relative './book'
require 'colorize'
require 'json'
require 'date'

class Editorial
  def initialize
    @books = []
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
    cover_state = gets.chomp.capitalize
    puts 'whats label should we put it?'.blue
    label = gets.chomp.capitalize
    new_book = Book.new(author, year, publisher, cover_state, genre, label)
    @books << new_book
    save_books
  end

  def list_books
    @books.each do |book|
      puts "Author: #{book['author']},
        Genre: #{book['genre']},
        Publish date: #{book['publish_date']},
        Cover state: #{book['cover_state']}".light_blue
    end
  end

  def list_labels
    puts 'List of all labels:'
    @books.each_with_index do |book, i|
      puts " #{i + 1}) #{book['genre']}"
    end
  end

  def save_books
    arr = @books.map do |book|
      if defined?(book['genre'])
        { genre: book['genre'],
          author: book['author'],
          publish_date: book['publish_date'],
          publisher: book['publisher'],
          cover_state: book['cover_state'],
          label: book['label'] }
      else
        {
          genre: book.genre,
          author: book.author,
          publish_date: book.publish_date,
          publisher: book.publisher,
          cover_state: book.cover_state,
          label: book.label
        }
      end
    end
    File.write('bookCollection.json', arr.to_json)
  end

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
    @books = JSON.parse(data)
  end
end
