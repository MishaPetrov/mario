require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Mango'
    fill_in 'Cost', :with => '2'
    fill_in 'Country', :with => 'Mexico'
    click_on 'Create Product'
    click_link 'Mango'
    click_link 'Add a review'
    fill_in 'review_author', :with => 'Admin'
    fill_in 'review_content_body', :with => 'Delicious! Such a good juicy and fresh fruit! Really recommend to everyone who likes exotic fruit!'
    select "5", :from => "review_rating"
    click_on 'Create Review'
    expect(page).to have_content 'Delicious!'
  end

  it "gives error when no data is entered" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Mango'
    fill_in 'Cost', :with => '2'
    fill_in 'Country', :with => 'Mexico'
    click_on 'Create Product'
    click_link 'Mango'
    click_link 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end

  it "gives error when one field is blank/empty" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Mango'
    fill_in 'Cost', :with => '2'
    fill_in 'Country', :with => 'Mexico'
    click_on 'Create Product'
    click_link 'Mango'
    click_link 'Add a review'
    fill_in 'review_author', :with => 'Admin'
    fill_in 'review_content_body', :with => 'Delicious! Such a good juicy and fresh fruit! Really recommend to everyone who likes exotic fruit!'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
