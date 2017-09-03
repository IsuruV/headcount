class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  
  has_many :user_locations
  has_many :locations, :through => :user_locations
  
  acts_as_mappable :through => :locations
end
