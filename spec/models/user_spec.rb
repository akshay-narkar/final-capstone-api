# Test suite for User model
require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  it { should have_many(:favs).dependent(:destroy) }
  it { should have_many(:courses).through(:favs) }
  # Validation tests
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
end
