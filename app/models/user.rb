class User < ActiveRecord::Base
  extend Devise::Models
  has_many :favs
  has_many :courses, :through => :favs 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
