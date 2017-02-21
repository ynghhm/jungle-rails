require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Products' do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:price)}
    it { is_expected.to validate_presence_of(:quantity)}
    it { is_expected.to validate_presence_of(:category)}
  end

  context 'describe' do
    before do
      @tops = Category.create(name: 'Tops')
    end

  it "should describe a " do
    @product = Product.create(
      name: "Denim Shirt",
      price: 20,
      quantity: 10,
      category: @tops
      )
    expect(@product.describe).to eq("Denim Shirt 10 20.00 Tops")
  end
  end
end
