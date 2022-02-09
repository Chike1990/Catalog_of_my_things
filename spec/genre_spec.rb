require '../classes/genre'

describe Genre do
    describe 'Checks the instace of genre' do
        it 'return true if the is the instaces of Genre'do
            instance_genre = Genre.new('Pauline', 'Ragge')
            expect(instance_genre).to be_instance_of(Genre)
        end
    end

    describe '#add_item' do
        it 'the method calls the add_genre' do
            
        end
    end

end
