require '../classes/music_album'

describe MusicAlbum do
    before(:each) do
        @album = MusicAlbum.new(DateTime.new(2020), 'Jazz', 'Paulina')
        @album_two = MusicAlbum.new(DateTime.new(2000), 'Jazz', 'Paulina')
        @album_three = MusicAlbum.new(DateTime.new(2020), 'Jazz', 'Paulina')
      end
    describe 'checks the instance of MusicAlbum class' do
        it 'Returns the instance of Music Album class' do
            expect(@album ).to be_instance_of(MusicAlbum)
        end
    end

    describe '#can_be_archived?' do
        it 'Should be achievable because of COVER' do
            expect(@album.can_be_archived?).to be(true)
          end
          it 'Should be achievable because of DATE' do
            expect(@album_two.can_be_archived?).to be(true)
          end
          it 'Should NOT be achievable' do
            expect(@album_three.can_be_archived?).to be(false)
          end
    end
end