require_relative '../classes/item'
require 'date'

describe 'test Item class' do
  before(:each) do
    @item = Item.new('1', 2000)
    @new_item = Item.new('1', 2020)
  end
  it 'instantiates an Item' do
    expect(@item).to be_instance_of Item
  end
  it 'should be archivable' do
    @item.move_to_archive
    expect(@item.archived).to be(true)
  end

  it 'should NOT be archivable' do
    @new_item.move_to_archive
    expect(@new_item.archived).to be(false)
  end
end
