require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end


RSpec.describe Product, type: :model do
  describe 'Products' do
    it { is_expected.to validate_presence_of(:password)}
    it { is_expected.to validate_presence_of(:password_confirmation)}
    it { is_expected.to validate_presence_of(:first_name)}
    it { is_expected.to validate_presence_of(:last_name)}
    it { is_expected.to validate_presence_of(:email)}
  end

  describe '.authenticate_with_credentials' do
    expect(@product.authenticate_with_credentials).to eq("book")
  end

  context 'description' do
    before do
      @tops = Category.create(name: 'Tops')
    end

  it "should describe a " do
    @product = Product.create(
      password: "book",
      password_confirmation: "book",
      first_name: "Young",
      last_name: "Hahm",
      email: "a@a.com"
      )
    expect(@product.description).to eq("book book Young Hahm a@a.com")
  end
  end
end