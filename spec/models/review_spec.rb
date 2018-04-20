require 'rails_helper'

describe Review do
  it { should validate_presence_of :review_title }
  it { should validate_presence_of :review_description }
  it { should validate_presence_of :rating }
  it { should belong_to :product }
end
