require_relative '../classes/book'
require 'date'

describe 'test Book class' do
  before(:each) do
    @book = Book.new('Edgar Allan Poe', 2020, 'Gandhi', 'bad', 'Horror')
    @book2 = Book.new('Edgar Allan Poe', 2000, 'Gandhi', 'good', 'Horror')
    @book3 = Book.new('Edgar Allan Poe', 2020, 'Gandhi', 'good', 'Horror')
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
