class User < ActiveRecord::Base
  # Include default devise modules.
  # devise :database_authenticatable, :registerable,
  #         :recoverable, :rememberable, :trackable, :validatable,
  #         :confirmable, :omniauthable
  # include DeviseTokenAuth::Concerns::User
  
  has_many :user_locations
  has_many :locations, :through => :user_locations
  
  acts_as_mappable :through => :locations
  ## server time will be different from users time
  # default_scope { where("created_at >= ?", Time.zone.now.beginning_of_day) }
  
  def email_required?
    false
  end
  
  def password_required?
    false
  end
  
end
