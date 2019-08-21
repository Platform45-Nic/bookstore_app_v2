# spec/models/book_spec.rb

require 'rails_helper'

# Test suite for the Book model
RSpec.describe Book, type: :model do
  it { should belong_to(:author) }
  it { should belong_to(:genre) }

  it { should validate_presence_of(:title) }
end