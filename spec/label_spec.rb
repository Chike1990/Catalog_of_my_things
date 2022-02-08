require_relative '../classes/label'
require_relative '../classes/item'

describe 'test Label class' do
  before(:each) do
    @label = Label.new('books', 'Red')
  end
  it 'instantiates a Label' do
    expect(@label).to be_instance_of Label
  end
  it 'should be Red color' do
    expect(@label.color).to eq('Red')
  end

  it 'should have Items' do
    @label.add_item(Item.new('1', '2', '3', Date.new(2020, 11, 25)))
    expect(@label.items).not_to be_empty
  end
end
