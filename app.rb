require 'colorize'
require_relative 'classes/bookshelf'
require_relative 'classes/game_shelf'
require_relative 'classes/game'
require_relative 'classes/author'
require_relative 'classes/album_collection'

class App
  def initialize
    @book_shelf = BookShelf.new
    @album_shelf = AlbumShelf.new
    @game_shelf = GameShelf.new
  end

  def run
    show_menu
    selection = gets.chomp
    case selection
    when '1'
      @book_shelf.start
    when '2'
      @album_shelf.start
    when '3'
      @game_shelf.start
    else
      puts 'GoodBye'.blue
      nil
    end
  end

  def show_menu
    puts 'Select an option to create'.blue
    puts '--------------------------------------------------------------------'.white
    puts '1.- Work with books'.green
    puts '2.- Work with Albums'.green
    puts '3.- Work with games'.green

    puts '0.- Close App'.light_green
  end
end
