require_relative './music_album'
require 'colorize'
require 'json'
require 'date'

class AddMusicAlbum
  def initialize
    @albums = []
  end
  attr_accessor :albums

  def list_albums
    puts "List of albums: "
    @albums.each_with_index do |album, indx|
      puts " #{indx + 1}). Author: #{album['author']},
        Genre: #{album['genre']},
        Publish date: #{album['publish_date']},
        On Spotify?: #{album['on_spotify']}".light_blue
    end
  end

  def list_genres
    puts "List of Genre:"
    @albums.each_with_index do |album, indx|
      puts " #{indx + 1}) #{album['genre']}"
    end
  end

  def add_albums
    puts 'Whats the Genre of the album?'.blue
    genre = gets.chomp.capitalize
    puts 'Who is the author?'.blue
    author = gets.chomp.capitalize
    puts 'Whats the publish year of the album?'.blue
    publish_date = gets.chomp.to_i(10)
    puts 'On spotify?'.blue
    on_spotify = gets.chomp.capitalize

    temp_album = MusicAlbum.new(publish_date, genre, author, on_spotify)

    @albums << temp_album
    save_albums
  end

  def save_albums
    arr = @albums.map do |album|
      if defined?(album['genre'])
        {
          genre: album['genre'],
          author: album['author'],
          publish_date: album['publish_date'],
          on_spotify: album['on_spotify']
        }
      else
        {
          genre: album.genre,
          author: album.author,
          publish_date: album.publish_date,
          on_spotify: album.on_spotify
        }
      end
    end
    File.write('albumCollection.json', arr.to_json)
  end

  def fetch_albums
    exists = false
    exists = true if File.exist?('albumCollection.json')
    unless exists
      f = File.open('albumCollection.json', 'w+')
      f.write(JSON.generate([]))
      f.close
    end
    album_file = File.open('albumCollection.json', 'r+')
    data = album_file.read
    @albums = JSON.parse(data)
  end
end
