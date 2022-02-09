require 'colorize'
require_relative './editorial'

module BookShelf
  def  BookShelf.show_menu
    puts 'What do you wish to do? Please enter the number of your choice'.blue
    puts '--------------------------------------------------------------------'.white
    puts '1.- List all books'.green
    puts '2.- List all Labels'.green
    puts '3.- Add a book'.green
    puts '0.- Close App'.light_green
  end

  def BookShelf.start
    BookShelf.show_menu
    response = gets.chomp

    case(response)
    when "1"
      return BookShelf.list_books
    when "2"
      return BookShelf.list_labels
    when "3"
      return BookShelf.add_book
    when "0"
      puts'GoodBye'.blue
      return
    else
      puts 'Not a valid option, please try again'.red
      return BookShelf.start
    end
  end
end

