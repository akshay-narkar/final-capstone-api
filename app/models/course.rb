class Course < ApplicationRecord
  has_many :favs, dependent: :destroy
  has_many :users, through: :favs
  validates :name, :domain, :teacher_name, presence: true
  default_scope { order('created_at DESC') }
  validates :fee, presence: true
  validates :rating, presence: true, numericality: { greater_than: -1, less_than: 6 }
end
