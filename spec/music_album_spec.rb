require_relative '../classes/music_album'

describe MusicAlbum do
    describe 'Checks the instace of genre' do
        it 'return true if the is the instaces of Genre'do
            music_instance = MusicAlbum.new(02/02/2020, false)
            expect(music_instance).to be_instance_of(/MusicAlbum)
        end
    end
end