require 'rails_helper'

describe Review do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :rating }
  it { should belong_to :product }
end
