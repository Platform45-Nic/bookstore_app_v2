# spec/models/review_spec.rb

require 'rails_helper'

# Test suite for the Review model
RSpec.describe Review, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:book) }

  it { should validate_presence_of(:review_description) }
end