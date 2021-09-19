class Fav < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :user_id, :course_id, presence: true, numericality: { only_integer: true }
  default_scope { order('created_at DESC') }
  validates_uniqueness_of :user_id, { scope: :course_id, message: 'Course already liked!' }
end
