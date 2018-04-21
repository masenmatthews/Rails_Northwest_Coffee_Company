require 'rails_helper'

describe "the add a review process" do
  it "add a new review" do
  visit new_product_path
  fill_in 'Title', :with => 'Grapes'
  fill_in 'Description', :with => 'Small round fruits'
  click_on 'Create Product'
  expect(page).to have_content 'Grapes'
  click_on 'Grapes'
  click_on 'Add new review'
  fill_in 'Review title', :with => 'Satisfactory purchase'
  fill_in 'Review description', :with => 'Grapes taste good'
  fill_in 'Rating', with: '4'
  click_on 'Create Review'
  expect(page). to have_content 'Satisfactory purchase'
  end

end
