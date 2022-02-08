class ListAlbum
    def self.list_album(albums)
        puts 'Your library is empty' if albums.empty?
        albums.each_with_index do |album, index| puts album end
    end
end

