require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    @product = Product.create(name: "Mango", cost: 2, country: "Mexico")
    visit product_path(@product)
    click_link 'Edit'
    fill_in 'Name', :with => 'Pear'
    click_on 'Update Product'
    expect(page).to have_content 'Pear'
  end

  it "deletes a product" do
    @product = Product.create(name: "Mango", cost: 2, country: "Mexico")
    visit product_path(@product)
    click_link 'Delete'
    expect(page).not_to have_content 'Mango'
  end
end
