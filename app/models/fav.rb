class Fav < ApplicationRecord
    belongs_to :user
    belongs_to :course
    validates_uniqueness_of :user_id, scope: %i[course_id]
end
