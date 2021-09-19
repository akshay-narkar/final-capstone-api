require 'rails_helper'
require 'faker'
RSpec.describe Course, type: :model do
  # Association test
  it { should have_many(:favs).dependent(:destroy) }
  it { should have_many(:users).through(:favs) }
  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:domain) }
  it { should validate_presence_of(:teacher_name) }
  it { should validate_presence_of(:fee) }
  it { should validate_presence_of(:rating) }
  it { should validate_numericality_of(:rating).is_less_than(6).is_greater_than(-1) }
end
