require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Mango'
    fill_in 'Cost', :with => '2'
    fill_in 'Country', :with => 'Mexico'
    click_on 'Create Product'

    visit products_path
    click_link 'Mango'
    click_link 'Edit'
    fill_in 'Name', :with => 'Pear'
    click_on 'Update Product'
    expect(page).to have_content 'Pear'
  end

  it "deletes a product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Mango'
    fill_in 'Cost', :with => '2'
    fill_in 'Country', :with => 'Mexico'
    click_on 'Create Product'

    visit products_path
    click_link 'Mango'
    click_link 'Delete'
    expect(page).not_to have_content 'Mango'
  end
end
