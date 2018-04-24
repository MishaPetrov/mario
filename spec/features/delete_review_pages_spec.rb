require 'rails_helper'

describe "the delete a review process" do
  it "deletes a review" do
    visit products_path
    @product = Product.create(name: "Mango", cost: 2, country: "Mexico")
    visit product_path(@product)
    click_link 'Add a review'
    fill_in 'review_author', :with => 'Admin'
    fill_in 'review_content_body', :with => 'Delicious! Such a good juicy and fresh fruit! Really recommend to everyone who likes exotic fruit!'
    select "5", :from => "review_rating"
    click_on 'Create Review'
    click_link 'Delete review'
    expect(page).not_to have_content 'Delicious!'
  end
end
