require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with valid attributes' do
    expect(Product.new(name: 'Plushy Toy', price: 100)).to be_valid
  end

  it 'is not valid without a name' do
    product = Product.new(name: nil, price: 100)
    expect(product).to_not be_valid
  end

  it 'is not valid without a price' do
    product = Product.new(name: 'Ramp for Bed', price: nil)
    expect(product).to_not be_valid
  end
end
