require 'colorize'
require_relative 'classes/bookshelf'

class App
  def initialize; end

  def run
    show_menu
    selection = gets.chomp
    case(selection)
    when "1"
      return BookShelf.start
    else
      puts'GoodBye'.blue
      return
    end
  end

  def show_menu
    puts 'Select an option to create'.blue
    puts '--------------------------------------------------------------------'.white
    puts '1.- Work with books'.green
    puts '0.- Close App'.light_green
  end
end
