require '../classes/music_album'

describe MusicAlbum do
    describe 'checks the instance of MusicAlbum class' do
        it 'Returns the instance of Music Album class' do
            music_album_instance = MusicAlbum.new(02/02/2020, 02/02/2020)
            expect(music_album_instance).to be_instance_of(MusicAlbum)
        end
    end
end