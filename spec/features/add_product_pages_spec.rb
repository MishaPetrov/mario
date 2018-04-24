require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'ADD'
    fill_in 'Name', :with => 'Mango'
    fill_in 'Cost', :with => '2'
    fill_in 'Country', :with => 'Mexico'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no data is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

  it "gives error when one field is blank/empty" do
    visit new_product_path
    fill_in 'Name', :with => 'Mango'
    fill_in 'Cost', :with => '2'
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
