require '../classes/music_album'

describe MusicAlbum do
    before(:each) do
        @album = MusicAlbum.new(1990, 'Jazz', 'Paulina', true)
        @album_two = MusicAlbum.new(2000, 'Jazz', 'Tina', true)
        @album_three = MusicAlbum.new(2020, 'Jazz', 'Paulina', false)
      end
    describe 'checks the instance of MusicAlbum class' do
        it 'Returns the instance of Music Album class' do
            expect(@album ).to be_instance_of(MusicAlbum)
        end
    end

    describe '#can_be_archived?' do
        it 'Should be archievable because on_spotify is true and year is > 10' do
            expect(@album.can_be_archived?).to be(true)
          end
          it 'Should be archievable because of DATE' do
            expect(@album_two.can_be_archived?).to be(true)
          end
          it 'Should NOT be archievable' do
            expect(@album_three.can_be_archived?).to be(false)
          end
    end
end