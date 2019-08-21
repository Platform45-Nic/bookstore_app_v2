# spec/models/genre_spec.rb

require 'rails_helper'

# Test suite for the Genre model
RSpec.describe Genre, type: :model do
  it { should belong_to(:creator) }

  it { should validate_presence_of(:name) }
end