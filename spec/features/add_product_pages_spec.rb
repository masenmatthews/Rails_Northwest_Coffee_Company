require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit new_product_path
    fill_in 'Title', :with => 'Grapes'
    fill_in 'Description', :with => 'Small round fruits'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
