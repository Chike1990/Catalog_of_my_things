require_relative '../classes/book'
require 'date'

describe 'test Label class' do
  before(:each) do
    @book = Book.new('Horror', 'Edgar Allan Poe', Date.new(2020, 1, 1), 'Gandhi', 'bad')
    @book2 = Book.new('Horror', 'Edgar Allan Poe', Date.new(2000, 1, 1), 'Gandhi', 'good')
    @book3 = Book.new('Horror', 'Edgar Allan Poe', Date.new(2020, 1, 1), 'Gandhi', 'good')
  end
  it 'instantiates a Book' do
    expect(@book).to be_instance_of Book
  end

  it 'Should be achievable because of COVER' do
    expect(@book.can_be_archived?).to be(true)
  end
  it 'Should be achievable because of DATE' do
    expect(@book2.can_be_archived?).to be(true)
  end
  it 'Should NOT be achievable' do
    expect(@book3.can_be_archived?).to be(false)
  end
end
