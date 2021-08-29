require 'rails_helper'
require 'faker'
# require 'factory_bot'

RSpec.describe Fav, type: :model do
  let(:user1) { FactoryBot.build(:user) }
  let(:course1) { create(:course) }
  subject { Fav.new(user: user1, course: course1) }
  # Association test
  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:course) }
  end
  # Validation tests
  context 'Validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:course_id) }
    it { should validate_numericality_of(:user_id).only_integer }
    it { should validate_numericality_of(:course_id).only_integer }
    it { should validate_uniqueness_of(:user_id).scoped_to(:course_id).with_message("Course already liked!") }
  end
  context 'Relations' do
    it 'User likes a course' do
      expect(subject.user).to eq(user1)
    end
    it 'The particular course is liked' do
      expect(subject.course).to eq(course1)
    end
  end
end
