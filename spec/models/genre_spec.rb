# spec/models/genre_spec.rb

require 'rails_helper'

# Test suite for the Book model
RSpec.describe Book, type: :model do
  it { should belong_to(:creator) }

end