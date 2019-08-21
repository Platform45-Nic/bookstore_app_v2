# spec/models/transaction_spec.rb

require 'rails_helper'

# Test suite for the Transaction model
RSpec.describe Transaction, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:book) }

  it { should validate_presence_of(:transaction_comment) }
end